<%@ page language="java" import="java.sql.*" %>

<% response.setContentType("text/html");%>
<%
HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
String emp_name=nagarpalika.getAttribute("emp_name").toString(); 


 String str=request.getParameter("queryString");
//String category_id = str.substring(0, str.indexOf("."));
try {
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+""); 
//Add the data into the database
String sql = "SELECT item_name, item_id FROM item where category_id='"+str+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
//out.print("<select name = \"zone\" id=\"zone\"  onblur=\"lookup2(this.value);\">");
//out.print("<div class=\"mp-level\"><h2 class=\"icon icon-world\">Item</h2><ul><li><a class=\"icon1\">Add Item</a></li></ul></div>");
while (rs.next()){
out.println("<option value=\""+rs.getString(2)+"\">"+rs.getString(1)+"</option>");
}
//out.print("</select>");
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>