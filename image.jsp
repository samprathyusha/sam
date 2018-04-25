<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page trimDirectiveWhitespaces="true" %>


<% 
String imgname=request.getParameter("date");
System.out.println("this is from image page");
System.out.println(imgname);

Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;
System.out.println(imgname);
System.out.println("im in trail page");

try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
stmt = con.createStatement();
System.out.println("select image from appointment where date="+"'"+imgname+"'");
rs = stmt.executeQuery("select image from appointment where date='"+imgname+"'");
if (rs.next()) {
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());
} 
else {
out.println("Display Blob Example");
out.println("image not found for given date");
return;
}
// display the image
response.setContentType("image/jpg");
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();
response.getOutputStream().flush();
response.getOutputStream().close();

} catch (Exception e) {
out.println("Unable To Display image");
out.println("Image Display Error=" + e.getMessage());
return;
} 
try {
rs.close();
stmt.close();
con.close();
} catch (SQLException e) {
e.printStackTrace();
}

%>