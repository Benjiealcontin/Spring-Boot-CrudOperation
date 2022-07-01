<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.util.*" %>
    <%@page import = "com.operation.Model.CrudModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<CrudModel> dataList = (List<CrudModel>)request.getAttribute("data");

	for(int i = 0; i<dataList.size(); i++){
	
%>
<ol>
<li><%out.print(dataList.get(i).getFirstname()); %></li>
<li><%out.print(dataList.get(i).getLastname()); %></li>
<li><%out.print(dataList.get(i).getAge()); %></li>
<li><%out.print(dataList.get(i).getVehicle()); %></li>
<%} %>
</ol>
</body>
</html>