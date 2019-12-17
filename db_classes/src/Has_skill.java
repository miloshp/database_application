import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class Has_skill{

  private Connection connection;
  private Scanner input = new Scanner(System.in);

  public Has_skill(Connection conn){
    connection = conn;
  }

  public void insertR(){

    PreparedStatement prepared_stmnt = null;
    String insert_stmnt = "INSERT INTO has_skill(per_id, sk_code) " +
                          " values (?, ?)";

    try{
      prepared_stmnt = connection.prepareStatement(insert_stmnt);

      System.out.println("Enter person id ");
      prepared_stmnt.setInt(1, input.nextInt());
      input.nextLine();

      System.out.println("Enter skill code)");
      prepared_stmnt.setString(2, input.nextLine());
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
    String delete_stmnt = "DELETE FROM has_skill WHERE per_id = ? AND sk_code = ?";

    try{
      prepared_stmnt = connection.prepareStatement(delete_stmnt);

      System.out.println("Enter person ID for skill deletition");
      prepared_stmnt.setInt(1, input.nextInt());
          
      System.out.println("Enter skill code to delete that skill");
      prepared_stmnt.setInt(2, input.nextInt());
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