package com.cestar.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cestar.dao.AccountDao;
import com.cestar.model.BankAccount;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<body bgcolor='purple'>");
		
		String url=request.getServletPath();	
		System.out.println(url);
		
		switch(url) {
		case "/display":
			display(request,response);
			out.print("<h2>From display page</h2>");
			break;
		case "/insert":
			insert(request,response);
			out.print("<h2>From Insert page</h2>");
			break;
		case "/edit":
			edit(request,response);
			out.print("<h2>From edit page</h2>");
			break;
		case "/update":
			update(request,response);
			out.print("<h2>From update page</h2>");
			break;
		case "/delete":
			delete(request,response);
			out.print("<h2>From dekete page</h2>");
			break;
		default:
			out.print("<h2>Please enter valid URL</h2>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AccountDao dao=new AccountDao();
		List<BankAccount> emps_from_db=dao.SelectAllAccount();
		System.out.println("neelesh");
		System.out.println(emps_from_db);
		
		//create session and set the list as an attribute
		
		HttpSession session=request.getSession();
		
		session.setAttribute("all_emps",emps_from_db);
		
		RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		
		rd.forward(request, response);
		
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		int accountId= Integer.parseInt(request.getParameter("accountId")) ;
		String accountType= request.getParameter("accountType");
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		float balance=Float.parseFloat(request.getParameter("balance"));
		String createdDate=request.getParameter("createdDate");
		AccountDao dao=new AccountDao();
		
		BankAccount emp_from_form=new BankAccount(accountId,accountType,name,contact,balance,createdDate);
		int result=dao.insertRec(emp_from_form);
		if (result>0) {
			out.print("Record inserted successfuly to db.");

		}else {
			out.print("Failed");
		}
		RequestDispatcher rd=request.getRequestDispatcher("display");
		
		rd.forward(request, response);
		
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		int did= Integer.parseInt(request.getParameter("did")) ;
		System.out.println(did);
		AccountDao dao=new AccountDao();

		int dresult=dao.delete(did);
		display(request,response);
//		
//		HttpSession session=request.getSession();
//		
//		session.setAttribute("dresult", dresult);
//RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
//		
//		rd.forward(request, response);
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	response.setContentType("text/html");
	
	PrintWriter out = response.getWriter();
	int eid=Integer.parseInt(request.getParameter("eid"));
	System.out.println(eid);
	AccountDao dao=new AccountDao();
	BankAccount emps_from_db=dao.getAccById(eid);
	System.out.println(emps_from_db);
	
	HttpSession session=request.getSession();
	
	session.setAttribute("uemp", emps_from_db);
	RequestDispatcher rd=request.getRequestDispatcher("edit.jsp");
	rd.forward(request, response);
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	response.setContentType("text/html");
	
	PrintWriter out = response.getWriter();
	int oid=Integer.parseInt(request.getParameter("oid"));
	
	int accountId= Integer.parseInt(request.getParameter("nid")) ;
	String accountType= request.getParameter("accountType");
	String name=request.getParameter("name");
	String contact=request.getParameter("contact");
	float balance=Float.parseFloat(request.getParameter("balance"));
	String createdDate=request.getParameter("createdDate");

	
	AccountDao dao=new AccountDao();
	
	BankAccount emp_from_form=new BankAccount(accountId,accountType,name,contact,balance,createdDate);
	int result=dao.updateAcc(oid,emp_from_form);
	
	display(request,response);

//	HttpSession session=request.getSession();
//	
//	session.setAttribute("result", result);
//	RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
//	
//	rd.forward(request, response);
	}

}
