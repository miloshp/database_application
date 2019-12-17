import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ExchangeCIO{

  private Connection connection2;
  private Connection connection3;
  private Scanner input = new Scanner(System.in);
  private PreparedStatement prepared_stmnt = null;
  ResultSet rs = null;

  public ExchangeCIO(Connection conn2, Connection conn3){
    connection2 = conn2;
    connection3 = conn3;
  }

  public void personExchange(){
    
    try{
     	System.out.println("\nExchanging CIOs \n");
    	System.out.println("Persons holding CIO's position that are in exchanging process:");
    	System.out.println("--------------------------------------------------------------");
    	
    	String listCIO = "SELECT  per_id, job_code "
    				   + "FROM job natural join position "
    				   + "where title = 'CIO'";
    	prepared_stmnt = connection2.prepareStatement(listCIO);
    	rs = prepared_stmnt.executeQuery();

    	System.out.println("PersonID");

    	while(rs.next()){
    		int person = rs.getInt("per_id");
    		int jbc = rs.getInt("job_code");
    		System.out.println(person + "\t\t" + jbc);
    	}
    	
    	String listCIO2 = "SELECT  per_id, job_code "
				   		+ "FROM job natural join position "
				   		+ "where title = 'CIO'";
    	prepared_stmnt = connection3.prepareStatement(listCIO2);
    	rs = prepared_stmnt.executeQuery();

    	while(rs.next()){
    		int person = rs.getInt("per_id");
    		int jbc2 = rs.getInt("job_code");
    		System.out.println(person + "\t\t" + jbc2);
    	}
    	
    	
    	System.out.println("Enter first per_id :");
      int per1 = input.nextInt();
    	
      System.out.println("Enter job_code from above corresponding to person:");
      int jb1 = input.nextInt();
        
      System.out.println("Enter second per_id :");
      int per2 = input.nextInt();
        
      System.out.println("Enter job_code from above corresponding to person:");
      int jb2 = input.nextInt();
        
    	removeOldJob(per2, jb1, per1, jb2);
    	displayChange();
    	
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

  public void removeOldJob(int per2, int jb1, int per1, int jb2) throws SQLException{
	
	  System.out.println("\n\nEXCHANGE INITIATED:");
  	System.out.println("--------------------------------------------------------------");
  	try {
  		connection2.setAutoCommit(false);
  		connection3.setAutoCommit(false);
  	  String get1 = "SELECT fName, lName, zip_code, email, gender, phone "
  		  		+ "FROM person "
  		  		+ "WHERE per_id =?";
  	  prepared_stmnt = connection2.prepareStatement(get1,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
  	  prepared_stmnt.setInt(1, per1);
  	  rs = prepared_stmnt.executeQuery();
  	
  	  String insert1 = "INSERT INTO person(per_id, fName, lName, zip_code, email, gender, phone) VALUES(?, ?, ?, ?, ?, ?, ?) ";
  	  prepared_stmnt = connection3.prepareStatement(insert1);
  	  rs.beforeFirst();

  	  while (rs.next()){
  		  String name = rs.getString("fName");
  		  String last = rs.getString("lName");
  		  int zip = rs.getInt("zip_code");
  	 	  String email = rs.getString("email");
  		  String gender = rs.getString("gender");
  		  String phone = rs.getString("phone");
  		  prepared_stmnt.setInt(1, per1);
        prepared_stmnt.setString(2, name);
        prepared_stmnt.setString(3, last);
        prepared_stmnt.setInt(4, zip);
        prepared_stmnt.setString(5, email);
        prepared_stmnt.setString(6, gender);
        prepared_stmnt.setString(7, phone);
        prepared_stmnt.addBatch();
      }
      prepared_stmnt.executeBatch();

  	  String get2 = "SELECT fName, lName, zip_code, email, gender, phone "
			  	+ "FROM person "
			  	+ "WHERE per_id =?";
	    prepared_stmnt = connection3.prepareStatement(get2,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
	    prepared_stmnt.setInt(1, per2);
	    rs = prepared_stmnt.executeQuery();
	
	    String insert2 = "INSERT INTO person(per_id, fName, lName, zip_code, email, gender, phone) VALUES(?, ?, ?, ?, ?, ?, ?) ";
	    prepared_stmnt = connection2.prepareStatement(insert2);
	    rs.beforeFirst();

	    while (rs.next()){
		    String name = rs.getString("fName");
		    String last = rs.getString("lName");
		    int zip = rs.getInt("zip_code");
		    String email = rs.getString("email");
		    String gender = rs.getString("gender");
		    String phone = rs.getString("phone");
		    prepared_stmnt.setInt(1, per2);
        prepared_stmnt.setString(2, name);
        prepared_stmnt.setString(3, last);
        prepared_stmnt.setInt(4, zip);
        prepared_stmnt.setString(5, email);
        prepared_stmnt.setString(6, gender);
        prepared_stmnt.setString(7, phone);
        prepared_stmnt.addBatch();
	    }
	   prepared_stmnt.executeBatch();

	   String update1 = "UPDATE job SET per_id =? WHERE job_code =? ";
	   prepared_stmnt = connection2.prepareStatement(update1);
	   prepared_stmnt.setInt(1, per2);
	   prepared_stmnt.setInt(2, jb1);
	   prepared_stmnt.executeUpdate();
	
	   String update2 = "UPDATE job SET per_id =? WHERE job_code =? ";
	   prepared_stmnt = connection3.prepareStatement(update2);
	   prepared_stmnt.setInt(1, per1);
	   prepared_stmnt.setInt(2, jb2);
	   prepared_stmnt.executeUpdate();
	
	   connection2.commit();
	   connection3.commit();
  	}catch(SQLException se){
      connection2.rollback();
  	  connection3.rollback();
  	 }
  }
  
  public void displayChange() throws SQLException{

	  System.out.println("Transfer complete");
    String changeD = "SELECT per_id, address "
    			   + "FROM job natural join store natural join position "
    			   + "where title = 'CIO'";
    prepared_stmnt = connection2.prepareStatement(changeD);
    rs = prepared_stmnt.executeQuery();

    System.out.println("\nPerson ID \tAddress");
    System.out.println("--------------------------------------------------------------");

    while(rs.next()){
      String person = rs.getString("per_id");
      String comp = rs.getString("address");
      System.out.println(person + "\t\t"+ comp);
    }

    String changeD2 = "SELECT per_id, address "
			   + "FROM job natural join factory natural join position "
			   + "where title = 'CIO'";
    prepared_stmnt = connection3.prepareStatement(changeD2);
    rs = prepared_stmnt.executeQuery();

    while(rs.next()){
      String person = rs.getString("per_id");
      String comp = rs.getString("address");
      System.out.println(person + "\t\t"+ comp);
    }
  }
}
