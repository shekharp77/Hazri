<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
<title>Events</title>
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
	 body {
  			margin: 30px;
  			padding: 0;
  			background: #ddd;
  			font-family: Arial, Helvetica, sans-serif;
  		} 

  		.title {
  			width: 100%;
  			max-width: 854px;
  			margin: 0 auto;
  		}

  		.caption {
  			width: 100%;
  			max-width: 854px;
  			margin: 0 auto;
  			padding: 20px 0;
  		}

  		.container {
  			width: 100%;
  			max-width: 854px;
  			min-width: 440px;
  			/* background: #fff; */
  			margin: 0 auto;
  		}


  		/*  VIDEO PLAYER CONTAINER
 		############################### */
  		.vid-container {
		    position: relative;
		    padding-bottom: 52%;
		    padding-top: 30px; 
		    height: 0; 
		}
		 
		.vid-container iframe,
		.vid-container object,
		.vid-container embed {
		    position: absolute;
		    top: 0;
		    left: 0;
		    width: 100%;
		    height: 100%;
		}


		/*  VIDEOS PLAYLIST 
 		############################### */
		.vid-list-container {
			width: 92%;
			overflow: hidden;
			margin-top: 20px;
			margin-left:4%;
			padding-bottom: 20px;
		}

		.vid-list {
			width: 1344px;
			position: relative;
			top:0;
			left: 0;
		}

		.vid-item {
			display: block;
			width: 148px;
			height: 148px;
			float: left;
			margin: 0;
			padding: 10px;
		}

		.thumb {
			/*position: relative;*/
			overflow:hidden;
			height: 84px;
		}

		.thumb img {
			width: 100%;
			position: relative;
			top: -13px;
		}

		.vid-item .desc {
			color: #21A1D2;
			font-size: 15px;
			margin-top:5px;
		}

		.vid-item:hover {
			background: #eee;
			cursor: pointer;
		}

		.arrows {
			position:relative;
			width: 100%;
		}

		.arrow-left {
			color: #fff;
			position: absolute;
			background: #777;
			padding: 15px;
			left: -25px;
			top: -130px;
			z-index: 99;
			cursor: pointer;
		}

		.arrow-right {
			color: #fff;
			position: absolute;
			background: #777;
			padding: 15px;
			right: -25px;
			top: -130px;
			z-index:100;
			cursor: pointer;
		}

		.arrow-left:hover {
			background: #CC181E;
		}

		.arrow-right:hover {
			background: #CC181E;
		}


		@media (max-width: 624px) {
			body {
				margin: 15px;
			}
			.caption {
				margin-top: 40px;
			}
			.vid-list-container {
				padding-bottom: 20px;
			}

			/* reposition left/right arrows */
			.arrows {
				position:relative;
				margin: 0 auto;
				width:96px;
			}
			.arrow-left {
				left: 0;
				top: -17px;
			}

			.arrow-right {
				right: 0;
				top: -17px;
			}
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
<body style = "background-color:#C0C0C0";>

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
	
	<%@page import="Config.DBConnection"%>
		<%@page import="java.sql.*"%>
		<%@page import="java.io.OutputStream"%>
		<%@page import="java.io.*"%>
		
<%
		try{
		Connection con = DBConnection.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("Select * from uploadvideo where videotype = 'events';");
		if(rs.last()){
 	%>	
	<div class="" style="margin:5%">
	<div class="container">

  		<!-- THE YOUTUBE PLAYER -->
  		<div class="vid-container">
		    <iframe id="vid_frame" src="http://www.youtube.com/embed/<%=rs.getString(2) %>?rel=0&amp;showinfo=0&amp;autohide=1" frameborder="0" width="560" height="315"></iframe>
		</div>
		<%rs.previous(); %>
		<!-- THE PLAYLIST -->
		<div class="vid-list-container">
	        <div class="vid-list">
	        
	         	<%do{ %>
 	            <div class="vid-item" onclick="document.getElementById('vid_frame').src='http://youtube.com/embed/<%=rs.getString(2) %>?autoplay=1&amp;rel=0&amp;showinfo=0&amp;autohide=1'">
 	              <div class="thumb"><img src="http://img.youtube.com/vi/<%=rs.getString(2) %>/0.jpg"></div>
 	            </div>
 	         
 	          <%
		}while(rs.previous());
	}
	}catch(Exception ex){
		ex.printStackTrace();
	}
 	 %>
 	 </div>
 	     </div>
 	 </div>    
 	 </div>
 	 <div class="arrows">
        	<div class="arrow-left"><i class="fa fa-chevron-left fa-lg"><</i></div>
        	<div class="arrow-right"><i class="fa fa-chevron-right fa-lg">></i></div>
        </div>

 
 	<script type="text/javascript">
  		$(document).ready(function () {
		    $(".arrow-right").bind("click", function (event) {
		        event.preventDefault();
		        $(".vid-list-container").stop().animate({
		            scrollLeft: "+=336"
		        }, 750);
		    });
		    $(".arrow-left").bind("click", function (event) {
		        event.preventDefault();
		        $(".vid-list-container").stop().animate({
		            scrollLeft: "-=336"
		        }, 750);
		    });
		});
  	</script>


  	<!-- google analytics -->
  	<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-19095819-1']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

	</script>
	
</body>
</html>