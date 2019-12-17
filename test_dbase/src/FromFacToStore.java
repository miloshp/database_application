import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FromFacToStore{

  private Connection connection;
  private Scanner input = new Scanner(System.in);
  private PreparedStatement prepared_stmnt = null;
  ResultSet rs = null;

  public FromFacToStore(Connection conn){
    connection = conn;
  }

  public void whichWorker(){
    
    try{
    	System.out.println("Factory employee list :\n");
    	String listFacWork = "SELECT per_id, fac_name FROM works NATURAL JOIN hires_s NATURAL JOIN factory ";
    	prepared_stmnt = connection.prepareStatement(listFacWork);
    	rs = prepared_stmnt.executeQuery();

    	System.out.println("PersonID \tFactory Name");

    	while(rs.next()){
    		int person = rs.getInt("per_id");
    		String f_n = rs.getString("fac_name");
    		System.out.println(person + "\t\t"+ f_n);
    	}
    	
    	System.out.println("Enter workers ID from above that is to be tranfered :");
    	int per_id = input.nextInt();
    	input.nextLine();
    	
    	String listJobCode = "SELECT fac_id, job_code FROM works NATURAL JOIN hires_s NATURAL JOIN factory WHERE per_id = ?";
    	prepared_stmnt = connection.prepareStatement(listJobCode);
    	prepared_stmnt.setInt(1, per_id);
    	rs = prepared_stmnt.executeQuery();

    	System.out.println("Fac ID \tJob Code");

    	while(rs.next()) {
    		int f_id = rs.getInt("fac_id");
    		int j_c = rs.getInt("job_code");
    		System.out.println(f_id + "\t\t"+ j_c);
    	}
      
    	System.out.println("Enter old job's category code from the above");
    	int old_jc = input.nextInt();
    	input.nextLine();
    	
    	System.out.println("Enter old factory id from the above");
    	int old_fid = input.nextInt();
    	input.nextLine();

    	System.out.println("List of the stores to be transfered");	
    	String listStores = "SELECT store_id FROM store";
    	prepared_stmnt = connection.prepareStatement(listStores);
    	rs = prepared_stmnt.executeQuery();

    	System.out.println("Store ID");

    	while(rs.next()){
    		int store_id = rs.getInt("store_id");
    		System.out.println(store_id);
    	}

    	System.out.println("Enter store ID from above \nwhere worker will be tansfered");
    	int store_id = input.nextInt();
    	input.nextLine();

    	removeOldJob(per_id, old_fid, old_jc, store_id);
    	displayChange(per_id);
    
    }catch (SQLException e){
    	System.out.println(e.getMessage());
    }finally{
    	try{
    		if(prepared_stmnt != null) prepared_stmnt.close();
    	}catch (SQLException e){
    		System.out.println(e.getMessage());
    	   }
        }
    }


  public void removeOldJob(int per_id, int fac_id, int old_jc, int store_id) throws SQLException{
	  
	String deleteFromWorks = "DELETE FROM works WHERE job_code =? AND per_id=?";
	prepared_stmnt = connection.prepareStatement(deleteFromWorks);
    prepared_stmnt.setInt(1, old_jc);
    prepared_stmnt.setInt(2, per_id);
    prepared_stmnt.executeUpdate(); 
    
    
    System.out.println("Updating new job starting date\n");
    System.out.println(" . . . . . . . . . \n ");

    String insertFromWorks = "INSERT INTO works (per_id, job_code, start_date, end_date) VALUES (?, ?, ?, ?) ";
    prepared_stmnt = connection.prepareStatement(insertFromWorks);
    prepared_stmnt.setInt(1, per_id);
    prepared_stmnt.setInt(2, old_jc);
    prepared_stmnt.setDate(3, java.sql.Date.valueOf("2019-03-04"));
    prepared_stmnt.setNull(4, java.sql.Types.DATE);
    prepared_stmnt.executeUpdate();
    
    // Deleting persons info from GV's relationship 
    String deleteFromHires = "DELETE FROM hires_s WHERE job_code =?";
    prepared_stmnt = connection.prepareStatement(deleteFromHires);
    prepared_stmnt.setInt(1, old_jc);
    prepared_stmnt.executeUpdate();
    
    /* Inserting into AZ's relationship hired persons info
       Still using the old job_code since nowhere is specified if new job will have different salary/wage */
    String insertFromHires = "INSERT INTO job_sto (job_code, store_id) VALUES (?, ?) ";
    prepared_stmnt = connection.prepareStatement(insertFromHires);
    prepared_stmnt.setInt(1, old_jc);
    prepared_stmnt.setInt(2, store_id);
    prepared_stmnt.executeUpdate();
  }
  
  public void displayChange(int per_id) throws SQLException{

	System.out.println("Transfer complete");
	System.out.println(" *   *   *   *   *");
    String changeD = "SELECT store_id, fName, lName "+
                     "FROM  person NATURAL JOIN works NATURAL JOIN job_sto "+
                     "WHERE per_id=? ";
    prepared_stmnt = connection.prepareStatement(changeD);
    prepared_stmnt.setInt(1, per_id);
    rs = prepared_stmnt.executeQuery();

    System.out.println("Store ID \tFirst \tLast\n");

    while(rs.next()){
        String store = rs.getString("store_id");
        String fname = rs.getString("fName");
        String lname = rs.getString("lName");
        System.out.println(store + "\t\t"+ fname + "\t\t" + lname);
    }
  }
}
