<%-- 
    Document   : logged_out.jsp
    Created on : Jun 8, 2019, 10:16:58 PM
    Author     : Vamshi
--%>
		

      <% session.invalidate(); %>
      
<% 
    HttpSession nsession = request.getSession(false);
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(nsession==null)
{
    RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
			rd.forward(request,response);
}
%>