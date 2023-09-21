package test3;
import test3.User;
import java.sql.*;
import java.util.*;
public class UserDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println("Connected");
		}
		catch(Exception e) {System.out.println(e);
		System.out.println("NOT connected");}
		return con;
	}
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from register");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				User u=new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setCourse(rs.getString("course"));
				list.add(u);
			}//while
		}catch(Exception e) {System.out.println(e);}
		return list;
	}
	public static int save(User u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?)");
			ps.setInt(1, u.getId());
			ps.setString(2, u.getName());
			ps.setString(3, u.getCourse());
			status=ps.executeUpdate();
		}catch(Exception e) {System.out.println(e);}
		return status;
	}
	
}
