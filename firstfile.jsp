<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- bootstrap  css -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/dncalendar.min.js"></script>


<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<!-- Bootstrap Date-Picker Plugin -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min. css"/>

</head>
<body>
<!--  calendar code -->
 <script>
   $(document).ready(function(){
     var date_input=$('input[name="date"]'); //our date input has the name "date"
     var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
     var options={
       format: 'dd-mm-yyyy',
       container: container,
       todayHighlight: true,
       autoclose: true,
       
     };
     date_input.datepicker(options);
   })
</script>
<script>



</script>
 
  

</head>
<body>
<form  action="Second.jsp" method="get">  

<input type="text" name="date"  onchange="this.form.submit()"  id="daterangepicker"> 

</body>
</html>