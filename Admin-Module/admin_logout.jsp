<%-- 
    Document   : admin_logout
    Created on : Jun 8, 2019, 11:22:45 PM
    Author     : Vamshi
--%>
<% session.invalidate(); %>
<% 
     HttpSession nsession = request.getSession(false);
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if(nsession==null)
{
    RequestDispatcher rd=request.getRequestDispatcher("admin_log.jsp");
			rd.forward(request,response);
}
%>
