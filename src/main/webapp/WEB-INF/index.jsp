<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>INDEX</title>

   <script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>


<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 
</head>
<body>
<body>
<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
       <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>


 <nav class="black" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo"><span style="font-family: "Comic Sans MS";color:"black";>CREDIT SCORE</span></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="#">Login</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact Us</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Login</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact Us</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
   <h2>${score}</h2>
  <div class="row">
    <form class="col s12" action="res" method="post">
      <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="ADHAR NUMBER" type="text" class="validate" name="AdharNumber" required>
          <label for="email">ADHAR NUMBER</label>
        </div>
        </div>
        <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="name" type="text" class="validate" name="Name" required>
          <label for="Name">Name</label>
        </div>
        </div>
        <div class="row">
        <div class="input-field col s6">
          <input placeholder="DD/MM/YYYY" id="DOB" type="text" class="validate" name="Dob" required>
          <label for="email">DOB </label>
        </div>
        </div>
        <p>
        GENDER:
      <input name="Gender" type="radio" id="test1"  value="M"/ required>
      <label for="test1">M</label>
   
      <input name="Gender" type="radio" id="test2" value="F" / required>
      <label for="test2">F</label>
   
      <input  name="Gender" type="radio" id="test3" value="other" / required>
      <label for="test3">Other</label>
    </p>    
    <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="pan" type="text" class="validate" name="Pannum" required>
          <label for="pan">Pan Number</label>
        </div>
        </div>
    
    <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="FF" type="text" class="validate" name="FutureField" required>
          <label for="FF">Future Field</label >
        </div>
        </div>
      
      <div class="row">
        <div class="input-field col s6">
          <input id="submit" type="submit" class="validate">
          
        </div>
      </div>
      </div>
    </form>
   
  </div>



</body>
</html>