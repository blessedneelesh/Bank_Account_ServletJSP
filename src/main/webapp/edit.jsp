<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "com.cestar.model.*, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

<%

BankAccount emp =(BankAccount) session.getAttribute("uemp");

%>
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

<form action="./update">

 <input type="hidden"  name="oid" id="oid" value=<%=emp.getAccountId()%>> <br><br>


<div class="form-group row">
    <label for="nid">Account ID:</label>
    <div class="col-sm-8">
        <input type="number" class="form-control" name="nid" id="nid" value=<%=emp.getAccountId()%> placeholder="Enter Account Number">
    </div>
  </div>
  
  
  <div class="form-group row">
 <label for="accType" class="mr-5">Account Type:</label>

  <div class="col-sm-4 ">   
  <input class="form-check-input" type="radio" name="accountType" value="Saving" id="flexRadioDefault1" <% if(emp.getAccountType().equals("Saving")){
  %>checked<%
  } %>>
  <label class="form-check-label" for="flexRadioDefault1">
	Saving
  </label>
  </div>
  <div class="col-sm-4">
  <input class="form-check-input" type="radio" name="accountType" value="Chequing" id="flexRadioDefault2"  <% if(emp.getAccountType().equals("Chequing")){
  %>checked<%
  } %>>
  <label class="form-check-label" for="flexRadioDefault2">
    Chequing
  </label></div>
 
</div>
  <div class="form-group row">
    <label for="name">Name:</label>
    <div class="col-sm-8">
        <input type="text" class="form-control" name="name"  id="name" value="<%=emp.getName()%>"  placeholder="Enter Name">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="contact">Contact:</label>
    <div class="col-sm-8">
        <input type="number" class="form-control" name="contact"  id="contact" value=<%=emp.getContact() %>  placeholder="Enter Contact">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="balance">Balance:</label>
    <div class="col-sm-8">
        <input type="number" class="form-control" name="balance"  id="balance" value=<%=emp.getBalance() %>  placeholder="Enter Account Number">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="createdDate">Created Date:</label>
    <div class="col-sm-8">
        <input type="date" class="form-control" name="createdDate"  id="createdDate" value=<%=emp.getCreatedDate() %> placeholder="Enter Account Number">
    </div>
  </div>

<button class="btn btn-success" type="submit" value="submit">Update</button>
</form>

</div>
<div class="col-3"></div>
</div>

<%-- <form action="./update">

Account ID: <input type="hidden"  name="oid" id="oid" value=<%=emp.getAccountId()%>> <br><br>

Account ID: <input type="text" name="nid" id="nid" value=<%=emp.getAccountId()%>> <br><br>
Account Type: <input type="text" name="accountType" id="name" value=<%=emp.getAccountType() %>> <br><br>
Name: <input type="text" name="name" id="name" value=<%=emp.getName() %>> <br><br>
Contact: <input type="text" name="contact" id="contact" value=<%=emp.getContact() %>> <br><br>
Balance: <input type="number" name="balance" id="balance" value=<%=emp.getBalance() %>> <br><br>
Created Date: <input type="text" name="createdDate" id="createdDate" value=<%=emp.getCreatedDate() %>> <br><br>
<button type="submit" value="submit">Update</button>
</form> --%>
</body>
</html>