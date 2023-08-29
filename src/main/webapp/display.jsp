<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.cestar.model.BankAccount,java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<%

List<BankAccount>  empz =(List) session.getAttribute("all_emps");

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

<table class="table table-striped table-light table-hover table-bordered p-5" >
<th>Account id</th>
<th>Account Type</th>
<th>Name</th>
<th>Contact</th>
<th>Balance</th>
<th>Date Created</th>
<th>Action</th>


 <%
for(int i=0;i<empz.size();i++){
	out.print("<tr><td>"+empz.get(i).getAccountId()+"</td><td>"+empz.get(i).getAccountType()+"</td><td>"+empz.get(i).getName()+"</td><td>"+empz.get(i).getContact()+"</td><td>"+empz.get(i).getBalance()+"</td><td>"+empz.get(i).getCreatedDate()+"</td><td><a class='btn btn-dark m-1 btn-sm' href=edit?eid="+empz.get(i).getAccountId()+">Update</a><a class='btn btn-danger btn-sm' href=delete?did="+empz.get(i).getAccountId()+">Delete</a></td></tr>");
}
%> 
</table>

</body>
</html>