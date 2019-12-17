import java.util.Scanner;
import java.sql.Connection;

public class UserInterface{

  private Scanner input = new Scanner(System.in);
  private Connection connection1;
  private Connection connection2;
  private Connection connection3;

  public UserInterface(Connection conn1, Connection conn2, Connection conn3){
    connection1 = conn1;
    connection2 = conn2;
    connection3 = conn3;
  }

  public void run_menu(){
    System.out.println("Enter 0 to exit");
    System.out.println("Enter 1 to modify tables");
    menu(input.nextInt());
  }

  public void menu(int option){
    if(option == 1) dataChangeRunner();
  }

  public void dataChangeRunner(){

    int userOption;
    EditData changeD = new EditData(connection1, connection2, connection3);

    do{
      System.out.println("Enter 0 to exit");
      System.out.printf("Enter 1 for Person \nEnter 2 for Job \n"
      		+ "Enter 3 for Skill info \nEnter 4 for Person's skills\n");
      
      userOption = input.nextInt();

      if(userOption > 0 && userOption <= 4)
        changeD.change(userOption);
    }while(userOption != 0);
  }
}