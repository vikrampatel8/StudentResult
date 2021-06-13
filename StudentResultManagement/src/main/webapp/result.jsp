<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.Entity.*,org.Project.Connect,java.util.*,java.sql.*"%> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 30px;
  cursor: pointer;
  font-size: 15px;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
</style>
<button style="float:right;"class="btn"><i class="fa fa-download"></i><a  onclick="window.print();" target="_blank" style="cursor:pointer;">&nbsp; Download</a></button>
<center><br/><br/><img src="assets/img/logo/jss.png" height="100px"/><br/></center>
<center><p>Jss Acadmey of Technical Education</p></center><hr/>
<center><b>EXAMINATION RESULT</b></center>
<hr/>
<% String usn = request.getParameter("usn");
try {
	Connection con=Connect.getCon();
	PreparedStatement ps = con.prepareStatement("select * from student inner join result on student.usn=result.usn and student.usn=?");
	ps.setString(1,usn);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
%>
<!--for demo wrap-->
  <div>
      <table>
      <thead>
        <tr>
          <th colspan=2><b>Institution:</b>&emsp; JSS Academy Of Technical Education</th>
          <th><b>Course:</b>&emsp; <%= rs.getString("course") %></th>
          <th><b>Branch:</b>&emsp; <%= rs.getString("branch") %> </th>
        </tr>
        <tr>
          <th><b>Usn:</b>&emsp; <%= rs.getString("usn") %></th>
          <th><b>Name:</b> &emsp; <%= rs.getString("name") %></th>
          <th><b>Semester:</b>&emsp; <%= rs.getInt("semester") %></th>
          <th><b>Section:</b>&emsp; <%= rs.getString("section") %></th>
        </tr>
      </thead>
    </table>
  </div>
  <hr class="new1"/>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>18CS61</td>
        <td colspan="2">SYSTEM SOFTWARE </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%= rs.getInt("ss") %></td>
      </tr>
      <tr>
        <td>18CS62</td>
        <td colspan="2">COMPUTER GRAPHICS</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td><%= rs.getInt("cg") %> </td>
      </tr>
      <tr>
        <td>18CS63</td>
        <td colspan="2">WEB </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%= rs.getInt("web") %></td>
      </tr>
      <tr>
        <td>18CS64</td>
        <td colspan="2">MATHS </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%= rs.getInt("maths") %></td>
      </tr>
            <tr>
        <td>18CS65</td>
        <td colspan="2">DATA MINING </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%= rs.getInt("dm") %></td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>560</td>
        <td>180</td>
        <td><% int total = rs.getInt("ss")+rs.getInt("cg")+rs.getInt("web")+rs.getInt("maths")+rs.getInt("dm");
        out.println(total);%> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((total/5.0)+ "%"); %></td>
      </tr>
 </table>
 <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.</h6></center>
<center><h6>All Right Reserved &copy; 2021</h6></center> 
</body>
<%
}}
catch(Exception e){
	System.out.println(e);
response.sendRedirect("errorStudentSearch.jsp");
}%>
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 15px;
  color: black;
  border: 2px solid #726E6D;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}
html {
  font-family:arial;
  font-size: 20px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}
</style>