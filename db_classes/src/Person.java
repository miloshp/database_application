import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;


public class Person{

	private Connection connection;
  private Scanner input = new Scanner(System.in);

  public Person(Connection conn){
  		connection = conn;
  }

	public void insertR(){

    PreparedStatement prepared_stmnt = null;
  	String insert_stmnt = "INSERT INTO person(per_id, fName, lName, " +
                              "zip_code, email, gender, phone) values (?, ?, ?, ?, ?, ?, ?)";

  	try{
      prepared_stmnt = connection.prepareStatement(insert_stmnt);

      System.out.println("Enter the person's ID");
    	prepared_stmnt.setInt(1, input.nextInt());
   	 	input.nextLine();

	   	System.out.println("Enter the person's first name");
    	prepared_stmnt.setString(2, input.nextLine());

	   	System.out.println("Enter the person's last name");
		  prepared_stmnt.setString(3, input.nextLine());

	   	System.out.println("Enter the person's zip code.");
	   	prepared_stmnt.setInt(4, input.nextInt());
   	 	input.nextLine();

    	System.out.println("Enter the person's email address.");
	   	prepared_stmnt.setString(5, input.nextLine());

    	System.out.println("Enter the person's gender.");
    	prepared_stmnt.setString(6, input.nextLine());

    	System.out.println("Enter the person's phone.");
	   	prepared_stmnt.setString(7, input.nextLine());
  		prepared_stmnt.executeUpdate();
  			
  		System.out.println("Inserting complete ");
  		System.out.println("-------------------");

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

	public void deleteR(){

    PreparedStatement prepared_stmnt = null;
    String delete_stmnt = "DELETE FROM person WHERE per_id = ?";
    try{
      prepared_stmnt = connection.prepareStatement(delete_stmnt);
      System.out.println("Enter the person's ID to be deleted");
      prepared_stmnt.setInt(1, input.nextInt());
	    prepared_stmnt.executeUpdate();

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
}