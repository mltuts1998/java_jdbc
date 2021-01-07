<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name =request.getParameter("user");
String password=request.getParameter("pass");
if(name.equals("test") && password.equals("1234"))
{
	out.println("<h1>Welcome "+name+"</h1>");
	pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);
	out.println("<a href='second.jsp'>second jsp page</a>");
}
else
	out.println("<h1>Not Valid!</h1>"); //else prints error here itself
%>

</body>
</html>