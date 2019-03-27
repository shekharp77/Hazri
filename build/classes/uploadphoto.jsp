<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    try{	
    	if(session.getAttribute("Authentication")==null){
            response.sendRedirect("login.html");
        }
    }catch(Exception ex){
    	ex.printStackTrace();
    }
    
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous" type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous" type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous" type="text/javascript"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="photoScript.js" type="text/javascript"></script>
<title>Hazo Hazri</title><link rel="icon" 
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

.main {
	font-size: "40px";
}

.nav-link {
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

.h1, .h3, .h4, .h5, .h6, h1, h3, h4, h5, h6, a, hr {
	margin-bottom: .5rem;
	font-family: myFont2;
	font-weight: 500;
	line-height: 1.2;
	color: inherit;
	color: #797777;
}
</style>
</head>
<body style="background-color: #C0C0C0";>
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
		<a href="NewFile.jsp"><img src="hazo_logo.png" width="50"
			height="60" class="d-inline-block align-top rounded" alt=""></a>
		&nbsp; <a class="navbar-brand" href="NewFile.html"><h3
				style="font-family: myFont;"></h3></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="Documentary.jsp">Documentary</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="Editorials.jsp">Editorials</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="Events.jsp">Events</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="Photography.jsp">Photography</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="Travel.jsp">Travel Vlogs</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="Videos.jsp">Videos</a></li>

			</ul>
		</div>
	</nav>








	<div class="jumbotron jumbotron-fluid"
		style="margin: 5%; text-align: center; background-color: #f8f9fa; border-color: rgba(51, 51, 51, 0.66); border-bottom-width: 1px; border-style: solid;"
		id="jumbo">
		<div align="center">

			<div class="main" id="workhousepro" align="center"
				style="color: #333333">
				<img src="hazo_logo.png" class="img-fluid rounded"
					alt="Responsive image" width="100" height="100">
				<h1 style="font-family: myFont; color: #333333; font-size: 4.5rem;">HAZO
					HAZRI</h1>
			</div>
			<div class="main" id="motto" align="center"
				style="color: #333333; font-size: 1.5rem;">
				<i style="font-family: myFont2;">Habitual at zooming objects</i>
			</div>
			<br> <br> <br> <br>

			<ul class="nav nav-tabs" style="border-bottom: 0px solid">
				<li class="nav-item active"><a class="nav-link" href="#"
					id="photolink">Upload Photo</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					id="videolink">Upload Video</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					id="delmyvideolink">Delete Video</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					id="delphotolink">Delete Photo</a></li>	
				<li class="nav-item"><a class="nav-link" href="#"
					id="aboutlink">Add About</a></li>
			</ul>

			<br> <br>
	<!-- --------------------------------------------------------------------------------------------------------- UPLOAD PHOTO-->
			<div id="photo" style="margin: 10%">
				<form action="Upload" method="post">
					<div class="form-group">
						<input type="text" class="form-control" value="photo" name="ftype"
							hidden>
					</div>
					<select class="form-control form-control" name="ptype" required>
						<option>Editorials</option>
						<option>Photography</option>
					</select> <br>
					<div class="form-group">
						<input type="file" class="form-control-file"
							id="exampleFormControlFile1" name="loc" required>
					</div>


					<input value="Upload" type="submit" class="btn btn-outline-primary"></input>
				</form>
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------- DELETE PHOTO-->
			<div id="delphoto" style="margin: 10%">
				<form action="Upload" method="post">
					<div class="form-group">
						<input type="text" class="form-control" value="delphoto" name="ftype"
							hidden>
					</div>
					<select class="form-control form-control" name="ptype" required>
						<option>Editorials</option>
						<option>Photography</option>
					</select> <br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Photo Id"
							id="exampleFormControlFile1" name="picID" required>
					</div>
					<input value="Delete" type="submit" class="btn btn-outline-danger"></input>
				</form>
			</div>
			<!-- --------------------------------------------------------------------------------------------------------- UPLOAD VIDEO-->

			<div id="video" style="margin: 10%">
				<form action="Upload" method="post">
					<div class="form-group">
						<input type="text" class="form-control" value="video"
							name="ftype" hidden>
					</div>
					<select class="form-control form-control" name="type" required>
						<option>Documentary</option>
						<option>Events</option>
						<option>Travel Vlogs</option>
						<option>Video</option>
					</select> <br>
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Embaded Link of video" name="elink" required>
					</div>

					<button type="submit" class="btn btn-outline-primary">Upload</button>
				</form>
			</div>
			<!-- ---------------------------------------------------------------------------------------------------------DELETE VIDEO -->
			
			<div id="delmyvideo" style="margin: 10%" >
				<form action="Upload" method="post">
					<div class="form-group">
						<input type="text" class="form-control" value="delvid"
							name="ftype" hidden>
					</div>
					<br>
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Embaded Link of video" name="elink" required>
					</div>
					<br>
					<select class="form-control form-control" name="type" required>
						<option>Documentary</option>
						<option>Events</option>
						<option>Travel Vlogs</option>
						<option>Video</option>
					</select> <br>

					<button type="submit" class="btn btn-outline-danger">DELETE</button>
				</form>
			</div> 
		
			<!-- ---------------------------------------------------------------------------------------------------------Add About -->		
				 <div id="about" style="margin: 10%">
				<form action="Upload" method="post">
					<div class="form-group">
						<input type="text" class="form-control" value="About" name="ftype"
							hidden>
					</div><br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Name" name="name"
							required>
					</div><br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="description" name="desc"
							required>
					</div>
					 <br>
					 <div class="form-group">
						<input type="text" class="form-control" placeholder="Link" name="flink"
							required>
					</div>
					 <br>
					 <div class="form-group">
						<input type="text" class="form-control" placeholder="Link description" name="Ldesc"
							required>
					</div>
					 <br>
					<div class="form-group">
						<input type="file" class="form-control-file"
							id="exampleFormControlFile1" name="loc" required>
					</div>
					<button type="submit" class="btn btn-outline-primary">ADD</button>
				</form>
			</div> 
				
			</div>
		
		</div>
	
</body>
</html>