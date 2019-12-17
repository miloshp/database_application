import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.util.Scanner;


public class ConnectDB{

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
		  
	    System.out.println("Connecting to database. . . ");
	    try (Connection connection1 = getDbConnection(usrn1, pw1);
	    	Connection connection2 = getDbConnection(usrn2, pw2);
			Connection connection3 = getDbConnection(usrn3, pw3);)
	    {
	    	System.out.println(" Log in : succesfull");
	        System.out.println("-----------------------");
	       	runDataBase(connection1, connection2, connection3);
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

  	private static void runDataBase(Connection connection1, Connection connection2, Connection connection3){
    	UserInterface userInt = new UserInterface(connection1,connection2,connection3);
    	userInt.run_menu();
  	}
}