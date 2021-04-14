<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title"  required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>{{title}}</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/yapi.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"  integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</head>
<body>
<div class=container-fluid>
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
     <a href="#" class="navbar-brand">SpringMVC</a>
     <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#deneme">
      <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="deneme">
       <ul class="navbar-nav ml-auto">
	        <li class="nav-item"><a href="/" class="nav-link">Home</a></li>
	        <li class="nav-item"><a href="studentform" class="nav-link">Student Form</a></li>
	        <li class="nav-item"><a href="studentinfo" class="nav-link">Student Info</a></li>
	        <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
       </ul>
     </div>
  </nav>
 </div> 
 
 <div class="contentmain">
   <div class="content">
     <jsp:invoke fragment="content"></jsp:invoke>
   </div>
 </div>
 
  <div class="footer mt-5" id="footer">
  <div class="container-fluid">
				<div class="row bg-dark text-center justify-content-center">
					<div class="col-sm-5">
						<a href="#" class="text-white mr-4">Datenschutz</a> <a href="#"
							class="text-white  mr-4">Impressum</a> <a href="#"
							class="text-white  mr-4">Kontakt</a>
					</div>
					<div class="col-sm-7 d-block">
						<a href="#" class="text-white d-block float-right">&copy;Copyright</a>
					</div>
				</div>
			</div>
  </div>

</body>
</html>