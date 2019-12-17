import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;


public class Skill{

  private Connection connection;
  private Scanner input = new Scanner(System.in);

  public Skill(Connection conn){
    connection = conn;
  }
  
  public void insertR(){

    PreparedStatement prepared_stmnt = null;
    String insert_stmnt = "INSERT INTO skill(sk_code, title, description, level_type) " +
                          " values (?, ?, ?, ?)";

    try{
      prepared_stmnt = connection.prepareStatement(insert_stmnt);

      System.out.println("Enter skill code");
      prepared_stmnt.setInt(1, input.nextInt());
      input.nextLine();

      System.out.println("Enter skill title");
      prepared_stmnt.setString(2, input.nextLine());

      System.out.println("Enter description");
      prepared_stmnt.setString(3, input.nextLine());

      System.out.println("Enter level_type");
      prepared_stmnt.setInt(4, input.nextInt());
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

    String delete_stmnt = "DELETE FROM skill WHERE sk_code = ?";
    try{
      prepared_stmnt = connection.prepareStatement(delete_stmnt);
      System.out.println("Enter skill code to be deleted");
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

