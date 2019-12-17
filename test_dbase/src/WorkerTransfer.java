import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class WorkerTransfer{

  private Connection connection;
  private Scanner input = new Scanner(System.in);
  private PreparedStatement prepared_stmnt = null;
  ResultSet rs = null;

  public WorkerTransfer(Connection conn){
    connection = conn;
  }

  public void whichWorker(){
    
    try{
      System.out.println("\n\nIts time to transfer worker from one factory to another");
      System.out.println("----------------------------------------------------------\n");
      System.out.println("Enter workers ID that is to be tranfered :");
      int per_id = input.nextInt();
      
      String listJobCode = "SELECT job_code, fac_id, emp_mode FROM job WHERE per_id = ?";

      prepared_stmnt = connection.prepareStatement(listJobCode);
      prepared_stmnt.setInt(1, per_id);
      rs = prepared_stmnt.executeQuery();

      System.out.println("Old position");
      System.out.println("************");
      System.out.println("Job code \tFactory \tType");

      // next() method to move the pointer on the next row to gather all info
      while(rs.next()){
    	  int job_co = rs.getInt("job_code");
    	  int fac_id = rs.getInt("fac_id");
    	  String emp = rs.getString("emp_mode");
    	  System.out.println(job_co + "\t\t"+ fac_id + "\t\t" + emp);
      }
      
      System.out.println("Enter old job's category code from the above");
      int old_jc = input.nextInt();

      System.out.println("Enter factory id for that is to be tansfered that is not from above");
      int fac_id = input.nextInt();

      removeOldJob(per_id, fac_id, old_jc);
      displayChange(per_id);
      
      System.out.println("\nWould you like to transfer another worker?");
      System.out.println("If yes press 1, otherwise hit any number");

      int press = input.nextInt();
      if(press == 1) {
    	  whichWorker();
      }

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


  public void removeOldJob(int per_id, int fac_id, int old_jc) throws SQLException{
	  
	  System.out.println("Transfer initiated \n");
	  System.out.println(" . . . . . . . . . \n ");
	  String updateFromWorks = "UPDATE job SET fac_id = ? WHERE per_id =? AND job_code =? ";
	  prepared_stmnt = connection.prepareStatement(updateFromWorks);
	  prepared_stmnt.setInt(1, fac_id);
	  prepared_stmnt.setInt(2, per_id);
	  prepared_stmnt.setInt(3, old_jc);
	  prepared_stmnt.executeUpdate();
  }
  
  public void displayChange(int per_id) throws SQLException{

	  System.out.println("Transfer complete");
	  System.out.println("------------------");
    String changeD = "SELECT fac_id, fac_name "+
                     "FROM factory NATURAL JOIN job "+
                     "WHERE per_id=? ";
    prepared_stmnt = connection.prepareStatement(changeD);
    prepared_stmnt.setInt(1, per_id);
    rs = prepared_stmnt.executeQuery();

    System.out.println("\nFactory ID \tName \n");
    while(rs.next()){
      String fac = rs.getString("fac_id");
      String name = rs.getString("fac_name");
      System.out.println(fac + "\t\t"+ name);
    }
  }
}
