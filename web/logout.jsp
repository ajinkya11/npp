<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        HttpSession nagarpalika=null;
        nagarpalika = request.getSession();
        nagarpalika.invalidate();
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
