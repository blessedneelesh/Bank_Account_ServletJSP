<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="display">Accounts</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="insert.jsp">Insert</a>
      </li>
     
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div class="row">
<div class="col-3"></div>
<div class="col-6" style="margin:10px; padding:25px; border-radius:20px; background-color:lavender">

<form action="./insert">

<div class="form-group row">
    <label for="accId">Account ID:</label>
    <div class="col-sm-8">
        <input type="number" name="accountId" class="form-control" id="accId" placeholder="Enter Account Number">
    </div>
  </div>
  
  
  <div class="form-group row">
 <label for="accType" class="mr-5">Account Type:</label>

  <div class="col-sm-4 "> 
  <input class="form-check-input" type="radio" name="accountType" value="Saving" id="flexRadioDefault1" checked>
  <label class="form-check-label" for="flexRadioDefault1">
Saving
  </label>
  </div>
  <div class="col-sm-4">
  <input class="form-check-input" type="radio" name="accountType" value="Chequing" id="flexRadioDefault2" >
  <label class="form-check-label" for="flexRadioDefault2">
    Chequing
  </label></div>
 
</div>
  <div class="form-group row">
    <label for="name">Name:</label>
    <div class="col-sm-8">
        <input type="text" name="name" class="form-control" id="name"  placeholder="Enter Name">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="contact">Contact:</label>
    <div class="col-sm-8">
        <input type="number" name="contact" class="form-control" id="contact"  placeholder="Enter Contact">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="balance">Balance:</label>
    <div class="col-sm-8">
        <input type="number" name="balance" class="form-control" id="balance"  placeholder="Enter Account Number">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="createdDate">Created Date:</label>
    <div class="col-sm-8">
        <input type="date" name="createdDate" class="form-control" id="createdDate"  placeholder="Enter Account Number">
    </div>
  </div>

<button class="btn btn-success" type="submit" value="submit">Save</button>
</form>

</div>
<div class="col-3"></div>
</div>


</body>
</html>