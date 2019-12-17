import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;


public class Job{

  private Connection connection;
  private Scanner input = new Scanner(System.in);

  public Job(Connection conn){
    connection = conn;
  }

  public void insertR(){

    PreparedStatement prepared_stmnt = null;
    String insert_stmnt = "INSERT INTO job(job_code, emp_mode, pay_rate, pay_type, comp_id) " +
                          " values (?, ?, ?, ?, ?)";
  
    try{
      prepared_stmnt = connection.prepareStatement(insert_stmnt);

      System.out.println("Enter job code");
      prepared_stmnt.setInt(1, input.nextInt());
      input.nextLine();

      System.out.println("Enter emplyment mode (full-time or part-time)");
      prepared_stmnt.setString(2, input.nextLine());

      System.out.println("Enter pay rate depending if it is salary or wage");
      prepared_stmnt.setString(3, input.nextLine());

      System.out.println("Enter pay type : Salary/Wage");
      prepared_stmnt.setInt(4, input.nextInt());
      input.nextLine();

      System.out.println("Enter company ID");
      prepared_stmnt.setInt(5, input.nextInt());
      input.nextLine();
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

  public void deleteR(){

    PreparedStatement prepared_stmnt = null;
    String delete_stmnt = "DELETE FROM job WHERE job_code = ?";

    try{
      prepared_stmnt = connection.prepareStatement(delete_stmnt);
      System.out.println("Enter job code to be deleted");
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

