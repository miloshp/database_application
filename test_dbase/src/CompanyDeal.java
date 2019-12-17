import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class CompanyDeal{

	private Connection connection3;
	private PreparedStatement prepared_stmnt = null;
	ResultSet rs = null;
	  
	public CompanyDeal(Connection conn3){
		connection3 = conn3;
	}
	  
	public void runDeal(){
		try {
			System.out.println("\n\nTime to make some deals\n");
		  	dealStart();
		}catch(SQLException e){
		    System.out.println(e.getMessage());
		}finally{
			try{
		    	if(prepared_stmnt != null) prepared_stmnt.close();
		    }catch (SQLException e){
		    	System.out.println(e.getMessage());
		    }
		}
	}
	  
	public void dealStart() throws SQLException {
		  
		try{
			//Setting the auto commit false
			connection3.setAutoCommit(false);
			 
			System.out.println("\nChecking EM's purchase from GV ");
			System.out.println("--------------------------------");
			String checkAmount = "SELECT contact_fName, sale_amount "
								+ "FROM contract NATURAL JOIN customer "
								+ "WHERE cust_id = '915'";
			prepared_stmnt = connection3.prepareStatement(checkAmount);
			rs = prepared_stmnt.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("contact_fName");
				int sale = rs.getInt("sale_amount");
				System.out.println("Sold to : "+name);
				System.out.println("Sold amount : $"+sale);
			}
			
			System.out.println("\nChecking GV's purchase from EM\n ");
			System.out.println("--------------------------------");
			String checkAmount1 = "SELECT sale, website "
								+ "FROM orders NATURAL JOIN supplier "
								+ "WHERE sup_id = '41431'";
			prepared_stmnt = connection3.prepareStatement(checkAmount1);
			rs = prepared_stmnt.executeQuery();
			while(rs.next()) {
				int sale = rs.getInt("sale");
				String web = rs.getString("website");
				System.out.println("Purchase amount : $"+sale);
				System.out.println("From : "+web);
			}
			// commit() method to save the changes
			connection3.commit();
			System.out.println("\nBoth contract and a purchase are complete . . .");
			
		}catch{
			// rollback to revert the changes done if there were any issues after commit
		  	connection3.rollback();
		 }
	}
}
