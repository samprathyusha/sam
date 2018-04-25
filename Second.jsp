
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<%  
String name= request.getParameter("date");
System.out.println(name);
if(name==null||name.trim().equals("")){  
out.print("<p>Please enter name!</p>");  
}else{  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");  
PreparedStatement ps=con.prepareStatement("select * from  appointment where date like '"+name+"%'");  

ResultSet rs=ps.executeQuery();

  
if(!rs.isBeforeFirst()) {      
 out.println("<p>No Record Found!</p>");   
}else{  
 

%>
<% while(rs.next()){%>
<table class='table  table-stripped table-bordered' > 
<tr><th>id</th><th>department</th><th>doctor</th>   <th>patientname</th><th>patientemail</th><th>date</th><th>mobilenumber</th> <th> image</th></tr>
 <tr >
 <td><%=rs.getString(1) %></td>
 <td><%=rs.getString(2) %></td>
 <td><%=rs.getString(3) %></td> 
 <td><%=rs.getString(4) %></td>
 <td><%=rs.getString(5) %></td>
 <td><%=rs.getString(6) %></td>  
 <td><%= rs.getString(7)%></td> 
 <td> <img src="image.jsp?date=<%=name%>" width="100"height="100" ></td>
 
 </tr> 
 <% } %>

</table>  
<% }//end of else for rs.isBeforeFirst  
con.close();  
}

catch(Exception e){out.print(e);}  
}//end of else  
 %>

</body>
</html>




