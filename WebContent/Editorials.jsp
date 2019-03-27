<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Editorials</title>
<link rel="icon" 
      type="image/png" 
      href="hazo_logo.png">
<style type="text/css">

			@font-face {
			    font-family: myFont;
			    src: url("POLYA.otf") format("truetype");
			}
			@font-face {
			    font-family: myFont2;
			    src: url("Delicious-SmallCaps.otf") format("truetype");
			}
			.main{
				font-size: "40px";
			}
			.nav-link{
				font-family: myFont2;
				font-size: 20px;
				color: black;
			}
			.fa {
			  padding: 20px;
			  font-size: 30px;
			  width: 50px;
			  text-align: center;
			  text-decoration: none;
			  margin: 5px 2px;
			  color: black;
			}
			.h1, .h3, .h4, .h5, .h6, h1, h3, h4, h5, h6,a, hr {
			    margin-bottom: .5rem;
			    font-family: myFont2;
			    font-weight: 500;
			    line-height: 1.2;
			    color: inherit;
			    color: #797777;
			}
</style>
</head>
<body style = "background-color: #c0c0c0;";>
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light" >
	<a href="NewFile.jsp"><img src="hazo_logo.png" width="50" height="60" class="d-inline-block align-top rounded" alt=""></a>
	&nbsp;
		<a class="navbar-brand" href="NewFile.html"><h3 style="font-family:myFont;"></h3></a> 
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		    <li class="nav-item active">
		        <a class="nav-link" href="Documentary.jsp">Documentary</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Editorials.jsp">Editorials</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Events.jsp">Events</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Photography.jsp">Photography</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Travel.jsp">Travel Vlogs</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="Videos.jsp">Videos</a>
		      </li>
		      
		         </ul>
		         </div>
	</nav>
	<br><br>
	<div class="jumbotron" style = "margin:5%;    background-color:#f8f9fa;">
		<%@page import="Config.DBConnection"%>
		<%@page import="java.sql.*"%>
		<%@page import="java.io.OutputStream"%>
		<%@page import="java.io.*"%>
		
<%
	try{
		System.out.println("******************=======");
	Connection con = DBConnection.getConnection();
	Statement st = con.createStatement();
	int Id;
	ResultSet rs=st.executeQuery("select * from uploadimage where ImageType = 'Editorials';");
	if(rs.last()){
	do{
		System.out.println("******************");
     Id = rs.getInt(1); 
%>	
	
	<div  style="margin:5%;font-family:myFont2;" align="center" class="">
    		<img src="<%="images/"+Id+".jpg"%>" class="img-fluid rounded" alt="Responsive image"  height="" width="800"><br>
    		<div align="left">
    			<small >(<%= Id%>)</small>
    		</div>		
    </div>
    
<%

	}while(rs.previous());}
		}catch(Exception ex){
			ex.printStackTrace();
		}

	
%>
</div>
</body>
</html>