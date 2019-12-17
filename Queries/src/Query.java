import java.sql.*;
import java.util.*;


public class Query{

  private Connection connection1; // LD database
  private Connection connection2; // AZ database
  private Connection connection3; // GV database

  private Scanner input = new Scanner(System.in);

  private PreparedStatement prepared_stmnt = null;

  String query = null;
  
  public Query(Connection conn1, Connection conn2, Connection conn3){
    connection1 = conn1;
    connection2 = conn2;
    connection3 = conn3;
    }
  
  public void startQueries(){
      // initializing resultset 
      ResultSet rs = null;
 
      try {
    	System.out.print("\nEnter number of the task to run query :");
        // initializing select as double since some of the questions were split in parts
        double select = input.nextDouble();  

        
        if(select != 0) {
   
        if (select == 1){
          System.out.println("List a specific the workers by names in the alphabetical order of last names.");
          System.out.println("\n           AZ \n ");
          query = "SELECT fName , lName " +
          "FROM person " +
          "ORDER BY lName ASC";
          prepared_stmnt = connection2.prepareStatement(query);
          rs = prepared_stmnt.executeQuery();
          
          System.out.println("First Name\tLast Name");
          System.out.println("------------------------------");
          while (rs.next()){
            String first = rs.getString("fName");
            String last = rs.getString("lName");
            System.out.println(first + "\t\t" + last);
          }
          rs.close();
          
          System.out.println("\n\n           GV \n");
          query = "SELECT fName , lName  " +
          "FROM person " +
          "ORDER BY lName ASC";
          prepared_stmnt = connection3.prepareStatement(query);
          rs = prepared_stmnt.executeQuery();
          
          System.out.println("First Name\tLast Name");
          System.out.println("------------------------------");
          while (rs.next()){
            String first = rs.getString("fName");
            String last = rs.getString("lName");
            System.out.println(first + "\t\t" + last);
          }
        }
        else if(select == 2) {
        	System.out.println("List the staff (salary workers) by salary in descending order.");
        	System.out.println("\n                AZ \n");
        	query = "SELECT fName, lName, pay_rate "
        			+ "FROM person NATURAL JOIN job "
        			+ "WHERE pay_type = 'salary' "
        			+ "ORDER BY pay_rate DESC";
        	prepared_stmnt = connection2.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	
        	System.out.println("First Name \tLast Name \tSalary");
        	System.out.println("-------------------------------------------");
            while (rs.next()){
              String first = rs.getString("fName");
              String last = rs.getString("lName");
              String sal = rs.getString("pay_rate");
              System.out.println(first + "\t\t" + last + "\t\t" + sal);
            }
            rs.close();
            
            System.out.println("\n\n                GV \n");
        	query = "SELECT fName, lName, pay_rate "
        			+ "FROM person NATURAL JOIN job "
        			+ "WHERE pay_type = 'salary' "
        			+ "ORDER BY pay_rate DESC";
        	prepared_stmnt = connection3.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	
        	System.out.println("First Name \tLast Name \tSalary");
        	System.out.println("-------------------------------------------");
            while (rs.next()){
              String first = rs.getString("fName");
              String last = rs.getString("lName");
              String sal = rs.getString("pay_rate");
              System.out.println(first + "\t\t" + last + "\t\t" + sal);
            }
        }
        else if(select == 3) {
        	System.out.println("List the average annual pay (the salary or wage rates multiplying by 1920 hours)"
        			+ " of each store/factory in descending order.\n");
        	System.out.println("\n                AZ\n");
        	query = "WITH annual AS(SELECT store_id, pay " + 
        							"FROM(SELECT store_id, (pay_rate) * 1920 AS pay " + 
        								 "FROM job " + 
        								 "WHERE pay_type = 'wage' " + 
        								 "UNION " + 
        								 "SELECT store_id, pay_rate AS pay " + 
        								 "FROM job " + 
        								 "WHERE pay_type = 'salary')) " + 
        			"SELECT store_id, AVG(pay) AS avg_pay " + 
        			"FROM  annual " + 
        			"GROUP BY store_id " + 
        			"ORDER BY avg_pay DESC";
        	prepared_stmnt = connection2.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Store ID \tAverage pay");
        	System.out.println("------------------------------------");
        	while(rs.next()) {
        		String stid = rs.getString("store_id");
        		int avg = rs.getInt("avg_pay");
        		System.out.println(stid +"\t\t"+ avg);
        	}
        	rs.close();
        	
        	System.out.println("\n                GV\n");
        	query = "WITH annual AS(SELECT fac_id, pay " + 
        							"FROM(SELECT fac_id, (pay_rate) * 1920 AS pay " + 
        								 "FROM job " + 
        								 "WHERE pay_type = 'wage' " + 
        								 "UNION " + 
        								 "SELECT fac_id, pay_rate AS pay " + 
        								 "FROM job " + 
        								 "WHERE pay_type = 'salary')) " + 
        			"SELECT fac_name, AVG(pay) AS avg_pay " + 
        			"FROM factory NATURAL JOIN annual " + 
        			"GROUP BY fac_name " + 
        			"ORDER BY avg_pay DESC";
        	prepared_stmnt = connection3.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Factory \t\t\tAverage pay");
        	System.out.println("-----------------------------------------");
        	while(rs.next()) {
        		String stid = rs.getString("fac_name");
        		int avg = rs.getInt("avg_pay");
        		System.out.println(stid +"\t\t\t"+ avg);
        	}
        }
        else if(select == 4) {
        	System.out.println("List the required skills of a given pos_code in a readable format.");
        	System.out.println("\n                AZ\n");
        	query = "SELECT title , sk_code, level_type " + 
        			"FROM skill NATURAL JOIN requires "+
        		    "WHERE pos_code = ?";
			System.out.print("Enter position code: "); //'9285613'
        	int pos_code = input.nextInt();
			prepared_stmnt = connection2.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code);
			
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Skill required \t\t\tSkill ID  \tLevel");
        	System.out.println("----------------------------------------------------------");
        	while(rs.next()) {
        		String title = rs.getString("title");
        		int sk = rs.getInt("sk_code");
        		String level = rs.getString("level_type");
        		System.out.println(title +"\t\t"+ sk +"\t\t"+level);
        	}
        	rs.close();
        	
        	System.out.println("\n                GV\n");
        	query = "SELECT title , sk_code, level_type " + 
        			"FROM skill NATURAL JOIN requires "+
        		    "WHERE pos_code = ?";
			System.out.print("Enter position code: ");
        	int pos_code1 = input.nextInt();
        	prepared_stmnt = connection3.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code1);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Skill required \t\t\tSkill ID  \tLevel");
        	System.out.println("-----------------------------------------------------------");
        	while(rs.next()) {
        		String title = rs.getString("title");
        		int sk = rs.getInt("sk_code");
        		String level = rs.getString("level_type");
        		System.out.println(title +"\t\t"+ sk +"\t\t"+level);
        	}
        }
        else if(select == 5) {
        	System.out.println("Given a person’s identifier, list this person’s skills in a readable format.");
        	System.out.println("\n                AZ\n");
        	query = "SELECT title, sk_code, level_type " + 
        			"FROM skill NATURAL JOIN has_skill " + 
        			"WHERE per_id = ?";
			System.out.print("Enter person id: "); //'108'
        	int per_id = input.nextInt();
        	prepared_stmnt = connection2.prepareStatement(query);
        	prepared_stmnt.setInt(1,per_id);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("Skill ID \t\tLevel  \t\tSkills");
        	System.out.println("-----------------------------------------------------------");
        	while(rs.next()) {
        		String title = rs.getString("title");
        		int sk = rs.getInt("sk_code");
        		String level = rs.getString("level_type");
        		System.out.println(sk +"\t\t"+level +"\t\t"+title);
        	}
        	rs.close();
        	
        	System.out.println("\n                GV\n");
        	query = "SELECT title, sk_code, level_type " + 
        			"FROM skill NATURAL JOIN has_skill " + 
        			"WHERE per_id = ?";
			System.out.print("Enter person id: "); //'124'
        	int per_id1 = input.nextInt();
        	prepared_stmnt = connection3.prepareStatement(query);
			prepared_stmnt.setInt(1,per_id1);
        	rs = prepared_stmnt.executeQuery();
			
        	System.out.println("Skill ID \t\tLevel  \t\tSkills");
        	System.out.println("-----------------------------------------------------------");
        	while(rs.next()) {
        		String title = rs.getString("title");
        		int sk = rs.getInt("sk_code");
        		String level = rs.getString("level_type");
        		System.out.println(sk +"\t\t"+level +"\t\t"+title);
        	}
        }
        else if(select == 6) {
        	System.out.println("Given a person’s identifier, list a person’s missing skills for a specific pos_code in a readable format. ");
        	System.out.println("\n                AZ\n");
        	query = "WITH missing AS(SELECT sk_code " + 
        							"FROM requires " + 
        							"WHERE pos_code = ? " + 
        							"MINUS " + 
        							"SELECT sk_code " + 
        							"FROM has_skill " + 
        							"WHERE per_id = ?) " + 
        			"SELECT title, sk_code " + 
        			"FROM missing NATURAL JOIN skill";
			System.out.print("Enter position code: ");//9285612
			int pos_code = input.nextInt();
			System.out.print("Enter person id: ");//108
			int per_id = input.nextInt();
        	prepared_stmnt = connection2.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code);
			prepared_stmnt.setInt(2,per_id);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Skill ID \t\tMissing skill");
        	System.out.println("-----------------------------------------------");
        	while(rs.next()) {
        		String title = rs.getString("title");
        		int sk = rs.getInt("sk_code");
        		System.out.println(sk +"\t\t"+ title);
        	}
        	rs.close();
        	
        	System.out.println("\n\n                GV\n");
        	query = "WITH missing AS(SELECT sk_code " + 
        							"FROM requires " + 
        							"WHERE pos_code = '9285612' " + 
        							"MINUS " + 
        							"SELECT sk_code " + 
        							"FROM has_skill " + 
        							"WHERE per_id = '120') " + 
        			"SELECT title, sk_code " + 
        			"FROM missing NATURAL JOIN skill";
        	prepared_stmnt = connection3.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Skill ID \t\tMissing skill");
        	System.out.println("---------------------------------------------------");
        	while(rs.next()) {
        		String title = rs.getString("title");
        		int sk = rs.getInt("sk_code");
        		System.out.println(sk +"\t\t"+ title);
        	}
        }
        else if(select == 7) {
        	System.out.println("List the total number and the total sales ($) of every item in a given period of time (start date, end date) in AZ in the\n" + 
        			" descending order of sales.");
        	query = "WITH sold_item 	AS(SELECT unit, sale_quantity AS qnt, (price * sale_quantity) AS cost " + 
        								  "FROM sales NATURAL JOIN inventory " + 
        								  "WHERE sale_date BETWEEN TO_DATE('2018-01-09', 'YYYY-MM-DD') " + 
        								  "AND TO_DATE('2018-12-31', 'YYYY-MM-DD') " + 
        								  "ORDER BY cost DESC) " + 
        			"SELECT unit, qnt, CONCAT('$', cost) AS cost " + 
        			"FROM sold_item";
        	prepared_stmnt = connection2.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Quantity \tCost \t\tItem");
        	System.out.println("---------------------------------------------------");
        	while(rs.next()) {
        		String item = rs.getString("unit");
        		int qnt = rs.getInt("qnt");
        		String cost = rs.getString("cost");
        		System.out.println(qnt +"\t\t"+ cost +"\t\t"+item);
        	}	
        }
        else if(select == 8) {
        	System.out.println("\nList the item_num, its title and the total profit that made the biggest profit for AZ in 2018.");
        	query = "WITH sale_cost AS(SELECT price, item_num, unit " + 
        							  "FROM inventory NATURAL JOIN sales " + 
        							  "WHERE sale_date BETWEEN TO_DATE('2018-01-01', 'YYYY-MM-DD') " + 
        							  "AND TO_DATE('2018-12-31', 'YYYY-MM-DD')), " + 
        			"profit_sale AS(SELECT item_num, unit, price - unit_cost AS difference " + 
        						   "FROM sale_cost NATURAL JOIN line_item), " + 
        			"biggest_sale AS(SELECT item_num, unit, difference * sale_quantity AS profit " + 
        							"FROM sales NATURAL JOIN profit_sale) " + 
        			"SELECT item_num, unit, profit " + 
        			"FROM biggest_sale " + 
        			"WHERE profit = (SELECT MAX(profit) FROM biggest_sale)";
        	prepared_stmnt = connection2.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nItem ID \tItem \t\t\tProfit");
        	System.out.println("---------------------------------------------------");
        	while(rs.next()) {
        		String item = rs.getString("unit");
        		int num = rs.getInt("item_num");
        		int cost = rs.getInt("profit");
        		System.out.println(num +"\t\t"+ item +"\t\t"+cost);
        	}
        }
        else if(select == 9) {
        	System.out.println(" Show the items for which the inventory is below the minimum level in AZ system.");
        	query = "SELECT item_num, unit, inv_quantity, quantity_min " + 
        			"FROM inventory " + 
        			"WHERE inv_quantity < quantity_min ";
        	prepared_stmnt = connection2.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("Item ID \tQuantity \tMinimum Qnt \tItem");
        	System.out.println("----------------------------------------------------------");
        	while(rs.next()) {
        		String item = rs.getString("unit");
        		int num = rs.getInt("item_num");
        		int inq = rs.getInt("inv_quantity");
        		int inqm = rs.getInt("quantity_min");
        		System.out.println(num +"\t\t"+ inq +"\t\t"+inqm +"\t\t"+item);
        	}
        }
        else if(select == 10) {
        	System.out.println("List the total sales in dollar to each customer of GV in 2018.");
        	query = "WITH total_sales 	AS(SELECT cust_id, SUM(sale_amount) AS tot_s " + 
        								  "FROM contract\n" + 
        								  "WHERE sale_date BETWEEN TO_DATE('2018-01-01', 'YYYY-MM-DD') " + 
        								  "AND TO_DATE('2018-12-31', 'YYYY-MM-DD') " + 
        								  "GROUP BY cust_id " + 
        								  "ORDER BY tot_s DESC) " + 
        			"SELECT cust_id, CONCAT('$', tot_s) AS total_sale " + 
        			"FROM total_sales";
        	prepared_stmnt = connection3.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nCustomer ID \tTotal sale");
        	System.out.println("----------------------------------------------------------");
        	while(rs.next()) {
        		int cid = rs.getInt("cust_id");
        		String tots = rs.getString("total_sale");
        		System.out.println(cid +"\t\t"+ tots);
        	}
        }
        else if(select == 11) {
        	System.out.println("Show m_code, m_name of the material(s) that GV purchased the most (measured by quantity)"
        			+ " in the fourth quarter of 2018.");
        	query = "WITH counts AS(SELECT m_code, quantity AS qnt " + 
        							"FROM purchase_line NATURAL JOIN purchase " + 
        							"WHERE book_date BETWEEN TO_DATE('2018-10-01', 'YYYY-MM-DD') " + 
        							"AND TO_DATE('2018-12-31', 'YYYY-MM-DD')), " + 
        			"max_purch 	AS(SELECT m_code, m_name, qnt " + 
        						  "FROM materials NATURAL JOIN counts) " + 
        			"SELECT m_code, m_name, qnt " + 
        			"FROM max_purch " + 
        			"WHERE qnt = (SELECT MAX(qnt) " + 
        						 "FROM max_purch)";
        	prepared_stmnt = connection3.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nMaterial ID \tMaterial \tQuantity");
        	System.out.println("----------------------------------------------------");
        	while(rs.next()) {
        		int mid = rs.getInt("m_code");
        		String mm  = rs.getString("m_name");
        		int qnt = rs.getInt("qnt");
        		System.out.println(mid +"\t\t"+ mm +"\t\t"+ qnt);
        	}
        }
        else if(select == 12) {
        	System.out.println("Show the factory name that made the most total quantity of the product that was sold the most in 2018.");
        	query = "WITH prod_sold 	AS(SELECT p_code " + 
        								  "FROM line_item NATURAL JOIN contract " + 
        								  "WHERE sale_date BETWEEN TO_DATE('2018-01-01', 'YYYY-MM-DD') " + 
        								  "AND TO_DATE('2018-12-31', 'YYYY-MM-DD')), " + 
        			"max_prod AS(SELECT p_code, quantity " + 
        						"FROM product NATURAL JOIN prod_sold " + 
        						"WHERE quantity = (SELECT MAX(quantity) FROM product)) " + 
        			"SELECT fac_name " + 
        			"FROM max_prod NATURAL JOIN factory NATURAL JOIN makes";
        	prepared_stmnt = connection3.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nFactory Name");
        	System.out.println("--------------------------------");
        	while(rs.next()) {
        		String fc = rs.getString("fac_name");
        		System.out.println(fc );
        	}
        }
        else if(select == 13) {
        	System.out.println("Given a person’s identifier, find all the jobs this person is currently holding and worked in the past.");
        	query = "SELECT title, pos_code " + 
        			"FROM position NATURAL JOIN works  NATURAL JOIN job " + 
        			"WHERE per_id = '117'";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nJob \t\t\tPosition ID");
        	System.out.println("--------------------------------------");
        	while(rs.next()) {
        		String fc = rs.getString("title");
        		int pcd = rs.getInt("pos_code");
        		System.out.println(fc +"\t\t"+ pcd);
        	}
        }
        else if(select == 14) {
        	System.out.println("In a local or national crisis, we need to find all the people who once "
        			+ "held a position of the given pos_code. \n" + 
        			"List per_id, name, job position title and the years the person worked (starting year and ending year).");
        	query = "SELECT per_id, fName, lName, title, start_date, end_date " + 
        			"FROM person NATURAL JOIN works NATURAL JOIN job NATURAL JOIN position " + 
        			"WHERE pos_code = ? " + 
        			"AND end_date IS NOT NULL";
			System.out.print("Enter position code: ");//9285620
			int pos_code = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID \t\tName \t\tLast name \tPosition \t\t\tStart \t\t\tEnd");
        	System.out.println("------------------------------------------------------------------------------------------------------------------");
        	while(rs.next()) {
        		String fn = rs.getString("fName");
        		String ln = rs.getString("lName");
        		String ttl = rs.getString("title");
        		int pid = rs.getInt("per_id");
        		String sd = rs.getString("start_date");
        		String ed = rs.getString("end_date");
        		System.out.println(pid +"\t\t"+ fn +"\t\t"+ ln +"\t\t"+ ttl +"\t\t"+ sd +"\t\t"+ ed);
        	}
        }
        else if(select == 15) {
        	System.out.println("Find all the unemployed people who once held a job position of the given pos_code.");
        	query = "SELECT fName,lName, per_id " + 
        			"FROM person NATURAL JOIN works NATURAL JOIN job " + 
        			"WHERE pos_code = ? " + 
        			"AND end_date IS NOT NULL " + 
        			"GROUP BY fName, lName, per_id";
			System.out.print("Enter position code: ");//9285622
			int pos_code = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nName \t\tLast name \tID");
        	System.out.println("----------------------------------------------");
        	while(rs.next()) {
        		String fn = rs.getString("fName");
        		String ln = rs.getString("lName");
        		int pid = rs.getInt("per_id");
        		System.out.println(fn +"\t\t"+ ln +"\t\t"+ pid);
        	}
        }
        else if(select == 16) {
        	System.out.println("List the average, maximum and minimum annual pay (total salaries or wage rates multiplying by 1920 hours) \n" + 
        			"of each industry (listed in GICS) in the order of the industry names.");
        	query = "WITH total 	AS(SELECT pos_code, pay " + 
        							  "FROM(SELECT pos_code, (pay_rate) * 1920 AS pay " + 
        							  		"FROM job " + 
        							  		"WHERE pay_type = 'wage' " + 
        							  		"UNION " + 
        							  		"SELECT pos_code, pay_rate AS pay " + 
        							  		"FROM job " + 
        							  		"WHERE pay_type = 'salary')), " + 
        			"takeFrom 	AS(SELECT parent_id, AVG(pay) AS avg, MAX(pay) AS max, MIN(pay) AS min " + 
        						  "FROM total NATURAL JOIN sub_industry NATURAL JOIN gics NATURAL JOIN company " + 
        						  "GROUP BY parent_id) " + 
        			"SELECT ind_id, ind_title, avg, max, min " + 
        			"FROM takeFrom NATURAL JOIN gics";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID  \t\tAverage \tMax \t\tMin \t\tIndustry");
        	System.out.println("-----------------------------------------------------------------------------------------------");
        	while(rs.next()) {
        		String ttl = rs.getString("ind_title");
        		int iid = rs.getInt("ind_id");
        		int avg = rs.getInt("avg");
        		int max = rs.getInt("max");
        		int min = rs.getInt("min");
        		System.out.println(iid +"\t\t"+ avg +"\t\t"+ max +"\t\t"+ min +"\t\t"+ ttl);
        	}
        }
        else if(select == 17) {
        	System.out.println("Find out the biggest employer in terms of number of employees.");
        	query = "WITH max_employment AS(SELECT job_code, comp_id ,COUNT(per_id) AS total_no " + 
        									"FROM works  NATURAL JOIN job " + 
        									"GROUP BY job_code, comp_id) " + 
        			"SELECT job_code, website, total_no " + 
        			"FROM max_employment NATURAL JOIN company " + 
        			"WHERE total_no = (SELECT MAX(total_no) " + 
        							  "FROM max_employment)";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("ID \t\tWebsite \t\tEmployee # ");
        	System.out.println("---------------------------------------------------");
        	while(rs.next()) {
        		String web = rs.getString("website");
        		int jid = rs.getInt("job_code");
        		int ttn = rs.getInt("total_no");
        		System.out.println(jid +"\t\t"+ web +"\t\t"+ ttn);
        	}
        }
        else if(select == 17.1) {
        	System.out.println("Find out the biggest industry in terms of number of employees.");
        	query = "WITH max_employment AS(SELECT pos_code, COUNT(per_id) AS total_no " + 
        									"FROM works NATURAL JOIN job " + 
        									"GROUP BY  pos_code), " + 
        			"takeFrom 			AS(SELECT parent_id, MAX(total_no) AS maxTot " + 
        								  "FROM max_employment NATURAL JOIN gics NATURAL JOIN sub_industry NATURAL JOIN company NATURAL JOIN job " + 
        								  "GROUP BY parent_id) " + 
        			"SELECT ind_title, maxTot " + 
        			"FROM takeFrom NATURAL JOIN gics";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nEmployee #  \t\tIndustry");
        	System.out.println("---------------------------------------------------");
        	while(rs.next()) {
        		String ttl = rs.getString("ind_title");
        		int ttn = rs.getInt("maxTot");
        		System.out.println(ttn +"\t\t\t"+ ttl);
        	}
        }
        else if(select == 17.2) {
        	System.out.println("Find out the biggest industry group in terms of number of employees.");
        	query = "WITH max_employment AS(SELECT industry_group, COUNT(per_id) AS total_no " + 
        									"FROM works NATURAL JOIN company NATURAL JOIN job " + 
        									"GROUP BY industry_group) " + 
        			"SELECT ind_title , industry_group, total_no " + 
        			"FROM max_employment NATURAL JOIN gics " + 
        			"WHERE total_no = (SELECT MAX(total_no) " + 
        							  "FROM max_employment) " + 
        			"AND industry_group = ind_id";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nGroup \tEmployee # \t\tIndustry");
        	System.out.println("---------------------------------------------------");
        	while(rs.next()) {
        		String ttl = rs.getString("ind_title");
        		int igr = rs.getInt("industry_group");
        		int ttn = rs.getInt("total_no");
        		System.out.println(igr +"\t\t"+ ttn +"\t\t"+ ttl);
        	}	
        }
        else if(select == 18) {
        	System.out.println("Find out the job distribution among industries by showing the number of employees in each industry.");
        	query = "SELECT ind_title, ind_id ,COUNT(per_id) AS total_emp " + 
        			"FROM sub_industry NATURAL JOIN works NATURAL JOIN gics NATURAL JOIN job " + 
        			"GROUP BY ind_title, ind_id " + 
        			"ORDER BY COUNT(per_id) DESC";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("ID \tEmployee # \t\tIndustry ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		String ttl = rs.getString("ind_title");
        		int iid = rs.getInt("ind_id");
        		int ttn = rs.getInt("total_emp");
        		System.out.println(iid +"\t\t"+ ttn + "\t\t"+ ttl);
        	}
        }
        else if(select == 19) {
        	System.out.println("Given a person’s identifier and a pos_code, find the courses (course id and title) \n" + 
        			"that each alone teaches all the missing skills for this person to be qualified for the specified position, \n" + 
        			"assuming the skill gap of the worker and the requirement of the position can be covered by one course.");
        	query = "WITH match AS(SELECT sk_code, c_code " + 
        						   "FROM teaches NATURAL JOIN " + 
        						   "(SELECT sk_code " + 
        						   "FROM requires " + 
        						   "WHERE pos_code = ? " + 
        						   "MINUS " + 
        						   "SELECT sk_code " + 
        						   "FROM has_skill " + 
        						   "WHERE per_id = ?)miss ) " + 
        			"SELECT C.c_code AS code, C.title AS title " + 
        			"FROM course C " + 
        			"WHERE NOT EXISTS (SELECT DISTINCT sk_code " + 
        							  "FROM match " + 
        							  "MINUS " + 
        							  "SELECT sk_code " + 
        							  "FROM  teaches T " + 
        							  "WHERE C.c_code = T.c_code)";
			System.out.print("Enter position code: ");//9285613
			int pos_code = input.nextInt();
        	System.out.print("Enter Person Id: ");//109
			int per_id = input.nextInt();
			prepared_stmnt = connection1.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code);
			prepared_stmnt.setInt(2,per_id);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID \t\tCourse ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		String ttl = rs.getString("title");
        		int cid = rs.getInt("code");
        		System.out.println(cid +"\t\t"+ ttl);
        	}
        }
        else if(select == 20) {
        	System.out.println("Given a person’s identifier, find the job position with\n"
        			+ " the highest pay rate for this person according to his/her skill possession.");
        	query = "WITH qualified AS (SELECT DISTINCT pos_code, pay_range_high AS high " + 
        							   "FROM position " + 
        							   "WHERE NOT EXISTS (SELECT DISTINCT sk_code " + 
        							   					 "FROM requires " + 
        							   					 "WHERE pos_code = position.pos_code " + 
        							   					 "MINUS " + 
        							   					 "SELECT sk_code " + 
        							   					 "FROM has_skill " + 
        							   					 "WHERE per_id = ?)) " + 
        			"SELECT pos_code, title, high " + 
        			"FROM qualified NATURAL JOIN position " + 
        			"WHERE high = (SELECT MAX(high) " + 
        						  "FROM qualified)";
			System.out.print("Enter person id: ");//109
			int per_id = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
        	prepared_stmnt.setInt(1,per_id);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID \t\tPosition \t\tHighest payrate ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		String ttl = rs.getString("title");
        		int pid = rs.getInt("pos_code");
        		String ttn = rs.getString("high");
        		System.out.println(pid +"\t\t"+ ttl +"\t\t"+ ttn);
        	}
        }
        else if(select == 21) {
        	System.out.println("Given a position code, list all the names along with the emails \n"
        			+ "of the persons who are qualified for this position.");
        	query = "WITH qualified AS(SELECT P.per_id, P.fName, P.lName, P.email " + 
        							  "FROM person P " + 
        							  "WHERE NOT EXISTS (SELECT sk_code " + 
        							  "FROM requires " + 
        							  "WHERE pos_code = ? " + 
        							  "MINUS " + 
        							  "SELECT sk_code " + 
        							  "FROM has_skill PS " + 
        							  "WHERE PS.per_id = P.per_id)) " + 
        			"SELECT per_id, fName, lName, email " + 
        			"FROM qualified";
			System.out.print("Enter position code: ");//9285613
			int pos_code = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
			prepared_stmnt.setInt(1,pos_code);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID \t\tName \t\tLast name \t\tEmail ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		String fn = rs.getString("fName");
        		String ln = rs.getString("lName");
        		String eml = rs.getString("email");
        		int pid = rs.getInt("per_id");
        		System.out.println(pid +"\t\t"+ fn +"\t\t"+ ln +"\t\t"+ eml);
        	}
        }
        else if(select == 22) {
        	System.out.println("When a company cannot find any qualified person for a job position, a secondary solution is to find a person who is \n" + 
        			"almost qualified to the job position. Make a “missing-k” list that lists people who miss only k skills for a specified pos_code; k < 4.");
        	query = "WITH missing  	AS (SELECT per_id, COUNT(sk_code) AS need_sk " + 
        								"FROM(SELECT per_id, sk_code " + 
        									  "FROM person, requires " + 
        									  "WHERE pos_code = ? " + 
        									  "MINUS " + 
        									  "SELECT per_id, sk_code " + 
        									  "FROM has_skill) " + 
        									  "GROUP BY per_id) " + 
        			"SELECT per_id, fName, lName, need_sk " + 
        			"FROM missing NATURAL JOIN person " + 
        			"WHERE need_sk < 4";
			System.out.print("Enter position code: ");//9285616
			int pos_code = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
        	prepared_stmnt.setInt(1,pos_code);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID \t\tName \t\tLast name \tSkill # ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		String fn = rs.getString("fName");
        		String ln = rs.getString("lName");
        		int sk = rs.getInt("need_sk");
        		int pid = rs.getInt("per_id");
        		System.out.println(pid +"\t\t"+ fn +"\t\t"+ ln +"\t\t"+ sk);
        	}
        }
        else if(select == 23) {
        	System.out.println("Suppose there is a new position that has nobody qualified. List the persons who miss the least number of skills \n" + 
        			"that are required by this pos_code and report the “least number”.");
        	query = "WITH missing 	AS(SELECT per_id, COUNT(sk_code) AS need_sk " + 
        							  "FROM(SELECT per_id, sk_code " + 
        							  		"FROM person, requires " + 
        							  		"WHERE pos_code = ? " + 
        							  		"MINUS " + 
        							  		"SELECT per_id, sk_code " + 
        							  		"FROM has_skill) " + 
        							  		"GROUP BY per_id) " + 
        			"SELECT per_id, fName, lName, need_sk " + 
        			"FROM  missing NATURAL JOIN person " + 
        			"WHERE need_sk = (SELECT MIN(need_sk) " + 
        							 "FROM missing)";
			System.out.print("Enter position code: ");//9285616
			int pos_code = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
        	prepared_stmnt.setInt(1,pos_code);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nID \t\tName \t\tLast name \t# of skill ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		String fn = rs.getString("fName");
        		String ln = rs.getString("lName");
        		int sk = rs.getInt("need_sk");
        		int pid = rs.getInt("per_id");
        		System.out.println(pid +"\t\t"+ fn +"\t\t"+ ln +"\t\t"+ sk);
        	}
        }
        else if(select == 24) {
        	System.out.println("List each of the skill code and the number of people who misses the skill and are in the missing-k list \n" + 
        			"for a given position code in the ascending order of the people counts.");
        	query = "WITH missing 	AS (SELECT per_id, sk_code " + 
        								"FROM person, requires " + 
        								"WHERE pos_code = ? " + 
        								"MINUS " + 
        								"SELECT per_id, sk_code " + 
        								"FROM has_skill), " + 
        			"missing_count 	AS (SELECT per_id, COUNT(sk_code) AS misses " + 
        							   "FROM missing " + 
        							   "GROUP BY per_id), " + 
        			"missing_k 		AS(SELECT per_id " + 
        							   "FROM missing_count NATURAL JOIN person " + 
        							   "WHERE misses < 4) " + 
        			"SELECT sk_code, COUNT(per_id) AS No_ppl_miss " + 
        			"FROM missing_k NATURAL JOIN missing " + 
        			"GROUP BY sk_code " + 
        			"ORDER BY No_ppl_miss ASC";
			System.out.print("Enter position code: ");//9285613
			int pos_code = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
        	prepared_stmnt.setInt(1,pos_code);
			rs = prepared_stmnt.executeQuery();
        	System.out.println("\nSkill ID \t# of pepole missing skill");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		int sk = rs.getInt("sk_code");
        		String ppm = rs.getString("No_ppl_miss");
        		System.out.println(sk +"\t\t"+ ppm);
        	}
        }
        else if(select == 25) {
        	System.out.println("Find out the number of the workers whose earnings increased in a specific industry group \n" + 
        			"(use attribute “industry group” in table Company)");
        	query = "WITH current_s AS(SELECT per_id, industry_group, pay " + 
        							   "FROM works NATURAL JOIN job NATURAL JOIN company NATURAL JOIN (SELECT comp_id, job_code, (pay_rate) * 1920 AS pay " + 
        							   "FROM job " + 
        							   "WHERE pay_type = 'wage' " + 
        							   "UNION " + 
        							   "SELECT comp_id, job_code, pay_rate AS pay " + 
        							   "FROM job " + 
        							   "WHERE pay_type = 'salary') salary " + 
        							   "WHERE end_date IS NOT NULL), " + 
        			"prev_slry AS(SELECT per_id, industry_group, pay " + 
        						  "FROM works NATURAL JOIN job NATURAL JOIN company NATURAL JOIN (SELECT comp_id, job_code, (pay_rate) * 1920 AS pay " + 
        						  "FROM job " + 
        						  "WHERE pay_type = 'wage' " + 
        						  "UNION " + 
        						  "SELECT comp_id, job_code, pay_rate AS pay " + 
        						  "FROM job " + 
        						  "WHERE pay_type = 'salary') salary " + 
        						  "WHERE end_date IS NULL), " + 
        			"compare_slry AS(SELECT  DISTINCT Curr.per_id, Curr.industry_group, Curr.pay " + 
        							 "FROM prev_slry Prev, current_s Curr " + 
        							 "WHERE Curr.industry_group = Prev.industry_group " + 
        							 "AND Curr.pay > Prev.pay) " + 
        			"SELECT industry_group, COUNT(per_id) AS cnt " + 
        			"FROM compare_slry " + 
        			"GROUP BY industry_group";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
        	System.out.println("\nIndustry  \t # of People");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		int sk = rs.getInt("cnt");
        		int ind = rs.getInt("industry_group");
        		System.out.println(ind + "\t" + sk);
        	}
        }
        else if(select == 26) {
        	System.out.println("List all the courses, directly or indirectly required, that a person has to take in order to be qualified \n" + 
        			"for a job position of the given category, according to his/her skills possessed and courses taken");
        	query = "WITH miss 	AS(SELECT sk_code " + 
        							"FROM requires " + 
        							"WHERE pos_code =? " + 
        							"MINUS " + 
        							"SELECT sk_code " + 
        							"FROM has_skill " + 
        							"WHERE per_id = ?), " + 
        			"find_course AS(SELECT C.c_code, C.title " + 
        							"FROM course C " + 
        							"WHERE NOT EXISTS (SELECT DISTINCT sk_code " + 
        												"FROM miss " + 
        												"MINUS " + 
        												"SELECT sk_code " + 
        												"FROM  teaches T " + 
        												"WHERE C.c_code = T.c_code)), " + 
        			"rec(c_code, required_code) AS(SELECT prereq.c_code, prereq.required_code " + 
        											"FROM prereq " + 
        											"UNION ALL " + 
        											"SELECT rec.c_code, prereq.required_code " + 
        											"FROM rec, prereq " + 
        											"WHERE rec.required_code = prereq.c_code), " + 
        			"find_prereq AS(SELECT DISTINCT required_code, c_code " + 
        							"FROM rec NATURAL JOIN find_course " + 
        							"WHERE NOT( required_code = 'none')), " + 
        			"miss_prereq AS(SELECT required_code " + 
        							"FROM find_prereq " + 
        							"MINUS " + 
        							"SELECT c_code " + 
        							"FROM takes " + 
        							"WHERE per_id = ?), " + 
        			"uni_all AS(SELECT required_code AS crs_need " + 
        						"FROM miss_prereq " + 
        						"UNION " + 
        						"SELECT c_code AS crs_need " + 
        						"FROM find_course) " + 
        			"SELECT crs_need " + 
        			"from uni_all ";
        	System.out.print("Enter position code: ");//9285613
			int pos_code = input.nextInt();
			System.out.print("Enter person id: ");//109
			int per_id = input.nextInt();
        	prepared_stmnt = connection1.prepareStatement(query);
        	prepared_stmnt.setInt(1,pos_code);
        	prepared_stmnt.setInt(2,per_id);
        	prepared_stmnt.setInt(3,per_id);
			rs = prepared_stmnt.executeQuery();
			System.out.println("\nCourses needed ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		int sk = rs.getInt("crs_need");
        		System.out.println(sk);
        	}
        }
        else if(select == 27) {
        	System.out.print("Find the course sets that teach every skill required by the position(s) found in Query #22.\n" + 
        			" These courses should effectively help most jobless people become qualified for the jobs with high demands");
        	query = "WITH high_demand AS(SELECT pos_code, count(per_id) AS cnt_ppl\n" + 
        								"FROM works natural join job\n" + 
        								"WHERE end_date IS NULL " + 
        								"GROUP BY pos_code), " + 
        			"needed_sk 		 AS(SELECT DISTINCT sk_code " + 
        								"FROM requires NATURAL JOIN high_demand " + 
        								"WHERE cnt_ppl > (SELECT AVG(cnt_ppl)"
        												+ "FROM high_demand)), " + 
        			"find_course 	 AS(SELECT DISTINCT c_code " + 
        								"FROM teaches NATURAL JOIN needed_sk), " + 
        			"rec(c_code, required_code) AS(SELECT prereq.c_code, prereq.required_code " + 
        											"FROM prereq " + 
        											"UNION ALL " + 
        											"SELECT rec.c_code, prereq.required_code " + 
        											"FROM rec, prereq " + 
        											"WHERE rec.required_code = prereq.c_code) " + 
        			"SELECT DISTINCT required_code, c_code " + 
        			"FROM rec NATURAL JOIN find_course " + 
        			"WHERE NOT( required_code = 'none') ";
        	prepared_stmnt = connection1.prepareStatement(query);
        	rs = prepared_stmnt.executeQuery();
			System.out.println("\nPrereq \tCourse ");
        	System.out.println("------------------------------------------------------------");
        	while(rs.next()) {
        		int sk1 = rs.getInt("required_code");
        		int sk = rs.getInt("c_code");
        		System.out.println(sk1 + "\t"+ sk);
        	}
        }
      }
     startQueries();
        
      } catch (SQLException e){
          System.out.println(e.getMessage());
        } finally {
          try {
            if (rs != null) rs.close();
            if (prepared_stmnt != null) prepared_stmnt.close();
          }catch (SQLException e){
            System.out.println(e.getMessage());
          }
        }
   }
}