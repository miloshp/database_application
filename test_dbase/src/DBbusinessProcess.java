import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection; 
import java.util.Scanner;


public class DBbusinessProcess{
	
	public static void main(String[] args){
		
		  Scanner input = new Scanner(System.in);
		  System.out.print("Please enter username for LD :");
		  String usrn1  = input.nextLine();
		  System.out.print("Please enter password for LD :");
		  String pw1 = input.nextLine();

		  System.out.print("Please enter username for AZ :");
		  String usrn2  = input.nextLine();
		  System.out.print("Please enter password for AZ :");
		  String pw2 = input.nextLine();
		  
		  System.out.print("Please enter username for GV :");
		  String usrn3  = input.nextLine();
		  System.out.print("Please enter password for GV :");
		  String pw3 = input.nextLine();
		  
		  
	      System.out.println("Connecting to database . . .");
	      try (Connection connection1 = getDbConnection(usrn1, pw1);
	    	   Connection connection2 = getDbConnection(usrn2, pw2);
		       Connection connection3 = getDbConnection(usrn3, pw3);){
	        System.out.println(" Log in LD Database successfull");
	        System.out.println(" Log in AZ Database successfull");
	        System.out.println(" Log in GV Database successfull");
	        LD(connection1, connection2);
	        GV(connection3);
	        Exchan(connection2, connection3);
	        Deal(connection3);
	        
	      }
	      catch (SQLException e) {
	        System.out.println("Could not connect");
	        e.printStackTrace();
	      }
	  }

  private static Connection getDbConnection(String username, String password) throws SQLException{
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
    String url = "jdbc:oracle:thin:@dbsvcs.cs.uno.edu:1521:orcl";
    Connection connection = DriverManager.getConnection(url, username, password);
    return connection;
  }

  private static void LD(Connection connection1, Connection connection2){
	  HireEmployee db1 = new HireEmployee(connection1, connection2);
	  db1.isHired();
  }
  
  private static void GV(Connection connection){
	  WorkerTransfer db2 = new WorkerTransfer(connection);
	  db2.whichWorker();
  }
  
  private static void Exchan(Connection connection2,Connection connection3) {
	  ExchangeCIO db3 = new ExchangeCIO(connection2, connection3);
	  db3.personExchange();
  }
  
  public static void Deal(Connection connection3) {
	  CompanyDeal db5 = new CompanyDeal(connection3);
	  db5.runDeal();
  }
}