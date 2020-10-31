<%-- 
    Document   : doctor_loggedout
    Created on : Jun 10, 2019, 8:30:25 AM
    Author     : Vamshi
--%>

      <% session.invalidate(); %>
      
<% 
    HttpSession nsession = request.getSession(false);
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(nsession==null)
{
    RequestDispatcher rd=request.getRequestDispatcher("doctor_signup.jsp");
			rd.forward(request,response);
}
%>