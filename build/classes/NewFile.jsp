<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="main.js" script></script>
	<script type="text/javascript">
	
		$('#jumbo').hide(0);
		$('#contact').hide(0);
		$('#about').hide(0);
		$('#navbar').hide(0);
		$("body").css({"background-color":"white"});
	
	</script>
	<title>HAZO HAZRI</title>
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
<body >


			
				
				<div class="main" id="workhousepro" align="center" style="color: #333333">
					<img src="hazo_logo.png" class="img-fluid rounded" alt="Responsive image" width="50" height="60">
					<h1 style="font-family: myFont;color: #333333"     font-size: 3.5rem;>HAZO HAZRI</h1>
				</div>	
				<!-- <div class="main" id="motto" align="center" style="color: #333333"><i style="font-family: myFont2;">Habitual at zooming objects</i></div>
				 --><br><br>
				



	<div class="jumbotron jumbotron-fluid" style="background:download.jpg; margin:5%;text-align: center;background-color: #f8f9fa;border-color:rgba(51, 51, 51, 0.66);
    border-bottom-width: 1px;
    border-style: solid;" id="jumbo" hidden>
	<div align="center">
		
				<div class="main" id="workhousepro" align="center" style="color: #333333">
					<img src="hazo_logo.png" class="img-fluid rounded" alt="Responsive image" width="100" height="100">
					<h1 style="font-family: myFont;color: #333333;    font-size: 4.5rem;">HAZO HAZRI</h1>
				</div>	
				<div class="main" id="motto" align="center" style="color: #333333;font-size: 1.5rem;"><i style="font-family: myFont2;"></i></div>
				 <br>
				<br>
				<br>
				<br>
	
	
	<ul class="nav nav-tabs" style="border-bottom: 0px solid ">
  <li class="nav-item">
    <a class="nav-link active" href="#" id="worklink">Work</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" id="aboutlink">About</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" id="contactlink">Contact</a>
  </li>
</ul>
		
	<br>
	
	<br>
<div id="work">
	<div class="container">
	<div class="row" >
  <div class="col-sm-4">
    <div  style="margin-bottom:5%; 	">
    	<a href="Documentary.jsp">
    		<img src="documentary.jpg" class="img-fluid rounded" alt="Responsive image" >
    	</a>	
   <!--  <h3>Documentary</h3> -->
    </div>
    </div>
  <div class="col-sm-4">
    <div  style="margin-bottom:5%;">
    <a href="Editorials.jsp">
    	<img src="editorial.jpg" class="img-fluid rounded" alt="Responsive image">
    	</a>
    <!-- <h3>Editorials</h3> -->
    </div>
    </div>
  <div class="col-sm-4">
    <div  style="margin-bottom:5%;">
    <a href="Events.jsp">
    	<img src="events.jpg" class="img-fluid rounded" alt="Responsive image">
    </a>
    <!-- <h3>Events</h3> -->
    </div>
    </div>
  <div class="col-sm-4">
    <div  style="margin-bottom:5%;">
    <a href="Photography.jsp">
    	<img src="photography.jpg" class="img-fluid rounded" alt="Responsive image">
    	</a>
    <!-- <h3>Photography</h3> -->
    </div>
    </div>
    <div class="col-sm-4">
    <div  style="margin-bottom:5%;">
    <a href="Travel.jsp">
    	<img src="travelvlog.jpg" class="img-fluid rounded" alt="Responsive image">
    	</a>
    <!-- <h3>Travel Vlog</h3> -->
    </div>
    </div>
    <div class="col-sm-4">
    <div  style="margin-bottom:5%;">
    <a href="Videos.jsp">
    	<img src="videos.jpg" class="img-fluid rounded" alt="Responsive image">
    	</a>
    <!-- <h3>Videos</h3> -->
    </div>
    </div>
    </div>
</div>
</div>
<!-- ------------------------------------------------------------------------------------------ -->
<div id="contact" style="margin:10%">
		<form action="Contact" method="get">
		  <div class="form-group">
		    <input type="text" class="form-control"  placeholder="first name" name="name" required>
		  </div>
		  <div class="form-group">
		    <input type="Email" class="form-control"  placeholder="email" name="email" required>
		  </div>		  
		  <div class="form-group">
		    <input type="text" class="form-control"  placeholder="phone" name="num" required>
		  </div>
		  <div class="form-group">
		    <input type="text" class="form-control"  placeholder="Subject" name="sub" required> 
		  </div>
		  <div class="form-group">
		    <textarea type="text" class="form-control"  placeholder="Your message" name="mess" required></textarea>
		  </div>
		   
		  <button type="submit" class="btn btn-outline-primary">Submit</button>
		</form>
</div>
<!-- ------------------------------------------------------------------------------------------------------ -->
<div id="about">
			<h1 style="font-size:2rem">About</h1>
			<br><br><br><br>
			<div class="jumbotron">
				<div class="" style="margin-left:5%;">
				<table  style="">
					<tr>
				    <th align="left"><img src="hazo_logo.png" class="rounded" width="60" height="60"></th> 
				    <th style="font-family:myFont2;font-size: 40px;" align="left">Hazo Hazri</th>
				  </tr>
				  <tr>
				    <td style="font-family:myFont2"></td>
				  	<td align="left" style="padding-right:90px;padding-left:10px">He is a very good Photographer who is actually not only a photographer but also got a rocking band.
				  		He is a very good Photographer who is actually not only a photographer but also got a rocking band.
				  		He is a very good Photographer who is actually not only a photographer but also got a rocking band.
				  	</td>
				  </tr>
				  <br><br>
				  <tr align="center">
				  		<td>
				  			<a href="www.hazohazri.com"><span><h4><b>Click here: Follow me on website</b></h4></span></a>
				  		</td>
				  </tr>
				  </table>
				</div>
			</div>
			<br>
				<label style="font-family:myFont2"><h2>TEAM</h2></label>
				<!------------------------------------------------------------------------------------------  -->
				
	<%@page import="Config.DBConnection"%>
		<%@page import="java.sql.*"%>
		<%@page import="java.io.OutputStream"%>
		<%@page import="java.io.*"%>
		
<%
		try{
		Connection con = DBConnection.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("Select * from about;");
		while(rs.next()){
 	%>	
				<div class="jumbotron">
				<div class="" style="margin-left:5%;">
				<table  style="">
					<tr>
				    <th align="left"><img src="<%="images2/"+rs.getInt(1)+".jpg"%>" class="rounded" width="60" height="60"></th> 
				    <th style="font-family:myFont2;font-size: 40px;" align="left"><%=rs.getString(1) %></th>
				  </tr>
				  <tr>
				    <td style="font-family:myFont2"></td>
				  	<td align="left" style="padding-right:90px;padding-left:10px">
				  			<%java.sql.Blob aBlob = rs.getBlob(3);
				  				String str = new String(aBlob.getBytes(1l,(int)aBlob.length()));
				  			%>
				  			<%=str %>
				  				
				  		
				  	</td>
				  </tr>
				  <br><br>
				  <tr align="center">
				  		<td>
				  			<a href="<%java.sql.Blob bBlob = rs.getBlob(4);
				  				String str2 = new String(bBlob.getBytes(1l,(int)bBlob.length()));
				  			%>
				  			<%=str2 %>"><span><h4><b><%=rs.getString(5) %></b></h4></span></a>
				  		</td>
				  </tr>
				  </table>
				</div>
			</div>
			
			<%
			}
		
		}catch(Exception ex){
			ex.printStackTrace();
		}
			%>
			<br>
		</div>
<br>
<!-- --------------------------------------------------------------------------------------------------------------- -->
<br>
	<div >
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-youtube"></a>
		<a href="#" class="fa fa-instagram"></a>
	</div>
</div>
<!-- 
contact-------------------------------------------------------------------------------------------------- -->
</div>
</body>
</html>
