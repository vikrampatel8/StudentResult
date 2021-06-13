package org.Project;

import java.sql.*;
import org.Entity.Student;
import org.Entity.Result;
import java.util.ArrayList;  
import java.util.List;  
public class Connect {

	public  static Connection getCon() {
		
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentresult", "root", "pa$$word1");
			return connection;
			}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
		}
	public static int save(Student s){  
	    int status=0;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into student values(?,?,?,?,?,?)");  
	        ps.setString(1,s.getUsn());  
	        ps.setString(2,s.getName());  
	        ps.setString(3,s.getCourse());  
	        ps.setString(4,s.getBranch());  
	        ps.setInt(5,s.getSemester());  
	        ps.setString(6,s.getSection()); 
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Student s){  
	    int status=0;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"update student set name=?,course=?,branch=?,semester=?,section=? where usn=?");  
	        ps.setString(6,s.getUsn());  
	        ps.setString(1,s.getName());  
	        ps.setString(2,s.getCourse());  
	        ps.setString(3,s.getBranch());  
	        ps.setInt(4,s.getSemester());  
	        ps.setString(5,s.getSection());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Student s){  
	    int status=0;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement("delete from student where usn=?");  
	        ps.setString(1,s.getUsn());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Student> getAllRecords(){  
	    List<Student> list=new ArrayList<Student>();  
	      
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement("select * from student");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Student s=new Student();  
	            s.setUsn(rs.getString("usn"));  
	            s.setName(rs.getString("name"));  
	            s.setCourse(rs.getString("course"));  
	            s.setBranch(rs.getString("branch"));  
	            s.setSemester(rs.getInt("semester"));  
	            s.setSection(rs.getString("section"));  
	            list.add(s);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static Student getRecordById(String usn){  
	    Student s=null;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement("select * from student where usn=?");  
	        ps.setString(1,usn);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            s=new Student();  
	            s.setUsn(rs.getString("usn"));  
	            s.setName(rs.getString("name"));  
	            s.setCourse(rs.getString("course"));  
	            s.setBranch(rs.getString("branch"));  
	            s.setSemester(rs.getInt("semester"));  
	            s.setSection(rs.getString("section"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return s;  
	}  
	
	public static int save1(Result r){  
	    int status=0;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into result values(?,?,?,?,?,?)");  
	        ps.setString(1,r.getUsn());  
	        ps.setInt(2,r.getSs());  
	        ps.setInt(3,r.getCg());  
	        ps.setInt(4,r.getWeb());  
	        ps.setInt(5,r.getMaths());  
	        ps.setInt(6,r.getDm()); 
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update1(Result r){  
	    int status=0;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"update result set ss=?, cg=?, web=?, maths=?, dm=? where usn=?");  
	        ps.setString(6,r.getUsn());  
	        ps.setInt(1,r.getSs());  
	        ps.setInt(2,r.getCg());  
	        ps.setInt(3,r.getWeb());  
	        ps.setInt(4,r.getMaths());  
	        ps.setInt(5,r.getDm());   
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static Result getRecordById1(String usn){  
	    Result r=null;  
	    try{  
	        Connection con=getCon();  
	        PreparedStatement ps=con.prepareStatement("select * from result where usn=?");  
	        ps.setString(1,usn);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            r=new Result();  
	            r.setUsn(rs.getString("usn"));  
	            r.setSs(rs.getInt("ss"));  
	            r.setCg(rs.getInt("cg"));  
	            r.setWeb(rs.getInt("web"));  
	            r.setMaths(rs.getInt("maths"));  
	            r.setDm(rs.getInt("dm"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return r;  
	}  
}
  