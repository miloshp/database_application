import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class HireEmployee{

  private Connection connection;
  private Connection connection2;

  private Scanner input = new Scanner(System.in);
  private PreparedStatement prepared_stmnt = null;
  ResultSet rs = null;

  public HireEmployee(Connection conn1, Connection conn2){
    connection = conn1;
    connection2 = conn2;
  }

  public void isHired(){

    try{
      System.out.println("\n\nLets hire some new employees");
      System.out.println("--------------------------------\n");
      System.out.println("Enter person's ID :");

      int per_id = input.nextInt();

      perInfo(per_id);
      uploadAZ(per_id);
      skillDifference(per_id);
      verifySkills(per_id);
      
      System.out.println("Would you like to hire more employees?");
      System.out.println("If yes press 1, otherwise hit any number");

      int press = input.nextInt();
      if(press == 1) {
    	  isHired();
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

  public void perInfo(int per_id) throws SQLException{

    System.out.println("List of person's information and skills\n");

    String listInfo = "SELECT fName, lName, zip_code, email, gender, phone FROM person WHERE per_id =?";

    prepared_stmnt = connection.prepareStatement(listInfo,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
    prepared_stmnt.setInt(1, per_id);
    rs = prepared_stmnt.executeQuery();

    System.out.println("First \tLast \tGender \tPhone");
    System.out.println("-----------------------------------------------");

    while(rs.next()){
      String fName = rs.getString("fName");
      String lName = rs.getString("lName");
      String zip = rs.getString("zip_code");
      String email = rs.getString("email");
      String gender = rs.getString("gender");
      String phone = rs.getString("phone");

      System.out.println(fName + "\t" + lName + "\t" + zip + "\t" + email + "\t" + gender +"\t"+ phone + "\n\n");
    }
    
    String insert2 = "INSERT INTO person(per_id, fName, lName, zip_code, email, gender, phone) VALUES(?, ?, ?, ?, ?, ?, ?) ";
	  prepared_stmnt = connection2.prepareStatement(insert2);

    // beforeFirst() method to move pointer to the begining so we can read and insert into another database
	  rs.beforeFirst();
	  while (rs.next()) {
		  String name = rs.getString("fName");
		  String last = rs.getString("lName");
		  int zip = rs.getInt("zip_code");
		  String email = rs.getString("email");
		  String gender = rs.getString("gender");
		  String phone = rs.getString("phone");
		  prepared_stmnt.setInt(1, per_id);
	    prepared_stmnt.setString(2, name);
	    prepared_stmnt.setString(3, last);
	    prepared_stmnt.setInt(4, zip);
	    prepared_stmnt.setString(5, email);
	    prepared_stmnt.setString(6, gender);
	    prepared_stmnt.setString(7, phone);
	    prepared_stmnt.addBatch();
		}

		prepared_stmnt.executeBatch();
    
    String listSkillInfo = "SELECT sk_code, title FROM person NATURAL JOIN has_skill NATURAL JOIN skill WHERE per_id =?";
    prepared_stmnt = connection.prepareStatement(listSkillInfo,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
    prepared_stmnt.setInt(1, per_id);
    rs = prepared_stmnt.executeQuery();

    System.out.println("Skill ID \t\tSkill");
    System.out.println("-----------------------------------------------");

    while(rs.next()) {
    	int sid = rs.getInt("sk_code");
    	String sk_n = rs.getString("title");
    	System.out.println(sid + "\t\t" + sk_n);
    }
    
    String insert3 = "INSERT INTO has_skill(sk_code, per_id) VALUES(?, ?) ";
	  prepared_stmnt = connection2.prepareStatement(insert3);
	  rs.beforeFirst();
	  while (rs.next()) {
		  String sk_code = rs.getString("sk_code");
	    prepared_stmnt.setString(1, sk_code);
		  prepared_stmnt.setInt(2, per_id);
	    prepared_stmnt.addBatch();
		}
		prepared_stmnt.executeBatch();
  }
  
  public void uploadAZ(int per_id) throws SQLException{
	  
	  System.out.println("\nUploading trancsripts");
	  try {
	    connection.setAutoCommit(false);
	  	connection2.setAutoCommit(false);
	  		
	    String listCourseInfo = "SELECT c_code, sec_no, complete_date, grade FROM takes WHERE per_id =?";
	    
      prepared_stmnt = connection.prepareStatement(listCourseInfo,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
	    prepared_stmnt.setInt(1, per_id);
	    rs = prepared_stmnt.executeQuery();

	    System.out.println("Course ID \t\tGrade");
	    System.out.println("-----------------------------------------------");

	    while(rs.next()) {
	    	int cid = rs.getInt("c_code");
	    	String gr = rs.getString("grade");
	    	System.out.println(cid + "\t\t" + gr);
	    }
	    
	    String insert3 = "INSERT INTO takes(per_id, sec_no, c_code, grade, complete_date) VALUES(?, ?, ?, ?, ?) ";
		  prepared_stmnt = connection2.prepareStatement(insert3);
		  rs.beforeFirst();

		  while (rs.next()){
			  int sec_no = rs.getInt("sec_no");
			  int ccd = rs.getInt("c_code");
			  String compd = rs.getString("complete_date");
			  String grd = rs.getString("grade");
		    prepared_stmnt.setInt(1, per_id);
			  prepared_stmnt.setInt(2, sec_no);
			  prepared_stmnt.setInt(3, ccd);
			  prepared_stmnt.setString(5, compd);
			  prepared_stmnt.setString(4, grd);
		    prepared_stmnt.addBatch();
			}

			prepared_stmnt.executeBatch();
			
			connection.commit();
			connection2.commit();
		}catch(SQLException se){
		  connection.rollback();
		  connection2.rollback();
		  }
  }

  public void skillDifference(int per_id) throws SQLException{
	
    String listDifference = "WITH diff AS(SELECT sk_code "+
                                          "FROM takes NATURAL JOIN teaches "+
                                          "WHERE per_id =? "+
                                          "MINUS "+
                                          "SELECT sk_code "+
                                          "FROM has_skill "+
                                          "WHERE per_id =?) "+
                            "SELECT sk_code "+
                            "FROM diff ";

    prepared_stmnt = connection2.prepareStatement(listDifference,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
    prepared_stmnt.setInt(1, per_id);
    prepared_stmnt.setInt(2, per_id);
    rs = prepared_stmnt.executeQuery();

    System.out.println("\n\nDifference in skills");
    System.out.println("-----------------------------------------------");

    while(rs.next()){
      int skill_code = rs.getInt("sk_code");
      System.out.println(skill_code );
    }

    System.out.println("\n\nUpdating skill difference into has_skill . . . . \n");
    String populateSk = "INSERT INTO has_skill(per_id, sk_code) values (?, ?)";

    prepared_stmnt = connection2.prepareStatement(populateSk);
    rs.beforeFirst();

    while (rs.next()){
        int sk_popul = rs.getInt("sk_code");
        System.out.println(sk_popul+"  updated");
        prepared_stmnt.setInt(1, per_id);
        prepared_stmnt.setInt(2, sk_popul);
        prepared_stmnt.addBatch();
    }

    prepared_stmnt.executeBatch();
  }

  public void verifySkills(int per_id) throws SQLException{
	
    String verification = "SELECT sk_code "+
                          "FROM requires "+
                          "WHERE pos_code = '9285616' "+
                          "MINUS "+
                          "SELECT sk_code "+
                          "FROM has_skill "+
                          "WHERE per_id =?";

    prepared_stmnt = connection.prepareStatement(verification);
    prepared_stmnt.setInt(1, per_id);
    rs = prepared_stmnt.executeQuery();

    if(rs.next()){
      String courseSet = "WITH match AS(SELECT sk_code, c_code " + 
      								    "FROM teaches NATURAL JOIN " + 
      								    "(SELECT sk_code " + 
      								    "FROM requires " + 
      								    "WHERE pos_code = '9285616' " + 
      								    "MINUS " + 
      								    "SELECT sk_code " + 
      								    "FROM has_skill " + 
      								    "WHERE per_id = ?)miss ) " + 
      		"SELECT C.c_code AS c_c, C.title AS c_tit " + 
      		"FROM course C " + 
      		"WHERE NOT EXISTS (SELECT DISTINCT sk_code " + 
      						   "FROM match " + 
      						   "MINUS " + 
      						   "SELECT sk_code " + 
      						   "FROM  teaches T " + 
      						   "WHERE C.c_code = T.c_code) ";
      prepared_stmnt = connection.prepareStatement(courseSet);
      prepared_stmnt.setInt(1, per_id);
      rs = prepared_stmnt.executeQuery();

      System.out.println("\n\nCourses needed");
      System.out.println("-----------------------------------------------");

      while(rs.next()){
        String c_code = rs.getString("c_c");
        String title = rs.getString("c_tit");
        System.out.println(c_code + "\t"+ title +"\n");
      }
    }
    else if(!rs.next()){
        System.out.println("Person is hired since there is no needed courses to take");
      }
  }
}