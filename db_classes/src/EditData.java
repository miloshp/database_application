import java.util.Scanner;
import java.sql.Connection; 


public class EditData{

	private Connection connection1;
	private Connection connection2;
	private Connection connection3;

  private Scanner input = new Scanner(System.in);

  public EditData(Connection conn1, Connection conn2, Connection conn3){
    connection1 = conn1;
  	connection2 = conn2;
  	connection3 = conn3;
  }

  public void change(int userInput){

  while(userInput != 0){
    if(userInput == 1){
      System.out.printf("Enter 1 to insert a person in LD database\n"
        			+ "Enter 2 to insert a person in AZ database\n"
        			+ "Enter 3 to insert a person in GV database\n"
        			+ "Enter 4 to delete a person in LD database\n"
        			+ "Enter 5 to delete a person in AZ database\n"
        			+ "Enter 6 to delete a person in GV database\n");
      userInput = input.nextInt();

      if(userInput == 1){
        Person insert = new Person(connection1);
        insert.insertR();
    	}
        	
      else if(userInput == 2){
        Person insert = new Person(connection2);
      	insert.insertR();
      }
        	
      else if(userInput == 3){
      	Person insert = new Person(connection3);
        insert.insertR();
    	}

    	else if(userInput == 4){
    		Person delete = new Person(connection1);
     		delete.deleteR();
     		userInput = 1;
     	}
        	
      else if(userInput == 5){
    		Person delete = new Person(connection2);
        delete.deleteR();
    		userInput = 1;
    	}
        	
      else if(userInput == 6){
    		Person delete = new Person(connection3);
     		delete.deleteR();
    		userInput = 1;
    	}
        	
    	System.out.println("To insert more people \n"
  					+ "or delete any of the records  press  "
  					+ "1");

  		int again = input.nextInt();
  		if(again == 1){
  			userInput = 1;
  		}
        	
    else userInput = 0;
    }

    else if(userInput == 2){
      System.out.printf("Enter 1 - insert a job LD. \n "
        			+ "Enter 2 - insert a job AZ.\n"
        			+ "Enter 3 - insert a job GV.\n"
        			+ "Enter 4 - delete a job LD\n "
        			+ "Enter 5 - delete a job AZ\n"
        			+ "Enter 6 - delete a job GV\n");
      userInput = input.nextInt();
 
      if(userInput == 1){
        Job insert = new Job(connection1);
    		insert.insertR();
    		userInput = 2;
      }
        	
      else if(userInput == 2){
    		Job insert = new Job(connection2);
    		insert.insertR();
     		userInput = 2;
     	}
        	
      else if(userInput == 3){
      	Job insert = new Job(connection3);
      	insert.insertR();
      	userInput = 2;
      }

      else if(userInput == 4){
      	Job delete = new Job(connection1);
        delete.deleteR();
      }
        	
      else if(userInput == 5){
    		Job delete = new Job(connection2);
    		delete.deleteR();
      }
        	
      else if(userInput == 6){
    		Job delete = new Job(connection3);
    		delete.deleteR();
      }
        	
      System.out.println("To insert more jobs \n"
  					+ "or delete any of the records  press  "
  					+ "1");
  		int again = input.nextInt();
  			if(again == 1){
  				userInput = 2;
  			}
        else userInput = 0;
      }

      else if(userInput == 3){
        System.out.printf("1 - insert a skill info LD. \n "
        			+ "2 - insert a skill inf AZ.\n"
        			+ "3 - insert a skill inf GV.\n"
        			+ "4 - delete a skill inf LD\n "
        			+ "5 - delete a skill inf AZ\n"
        			+ "6 - delete a skill inf GV\n");
        userInput = input.nextInt();

        if(userInput == 1){
        	Skill insert = new Skill(connection1);
      		insert.insertR();
      		userInput = 3;
      	}

        else if(userInput == 2){
          Skill insert = new Skill(connection2);
      		insert.insertR();
      		userInput = 3;
      	}
        	
        else if(userInput == 3){
      		Skill insert = new Skill(connection3);
      		insert.insertR();
      		userInput = 3;
      	}

        else if(userInput == 4){
      		Skill delete = new Skill(connection1);
      		delete.deleteR();
      		userInput = 3;
      	}
        	
        else if(userInput == 5){
      		Skill delete = new Skill(connection2);
      		delete.deleteR();
       		userInput = 3;
      	}
        	
        else if(userInput == 6){
      		Skill delete = new Skill(connection3);
      		delete.deleteR();
       		userInput = 3;
      	}
        	
        System.out.println("To insert more skill info \n"
  					+ "or delete any of the records  press  "
  					+ "1");
  			int again = input.nextInt();

  			if(again == 1) {
  				userInput = 3;
  			}
        else userInput = 0;
      }

      else if(userInput == 4){
        System.out.printf("1 - insert new skill LD. \n "
        			+ "2 - insert new skill AZ.\n"
        			+ "3 - insert new skill GV.\n"
        			+ "4 - delete new or old skill LD\n "
        			+ "5 - delete new or old skill AZ\n"
        			+ "6 - delete new or old skill GV\n");
        userInput = input.nextInt();

        if(userInput == 1){
        	Has_skill insert = new Has_skill(connection1);
      		insert.insertR();
      		userInput = 4;
       	}
        	
        else if(userInput == 2){
        	Has_skill insert = new Has_skill(connection2);
      		insert.insertR();
      		userInput = 4;
      	}
        	
      	else if(userInput == 3){
      		Has_skill insert = new Has_skill(connection3);
      		insert.insertR();
      		userInput = 4;
      	}

        else if(userInput == 4){
          Has_skill delete = new Has_skill(connection1);
      		delete.deleteR();
      		userInput = 4;
      	}
        	
        else if(userInput == 5){
          Has_skill delete = new Has_skill(connection2);
          delete.deleteR();
      		userInput = 4;
      	}
        	
        else if(userInput == 6){
          Has_skill delete = new Has_skill(connection3);
      		delete.deleteR();
      		userInput = 4;
        }
        	
        System.out.println("To insert more skills \n"
  					+ "or delete any of the records  press  "
  					+ "1");
  			int again = input.nextInt();

  			if(again == 1){
  				userInput = 4;
  			}
        else userInput = 0;
      }
    }
  }
}