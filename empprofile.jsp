<%@ page import="com.klef.jfsd.springboot.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
   Employee e = (Employee) session.getAttribute("employee");
   if (e == null) {
       response.sendRedirect("empsessionfailed");
       return;
   }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Home</title>
</head>
<body>
    <%@ include file="empnavbar.jsp" %>

    ID: <%= e.getId() %><br>
    Name: <%= e.getName() %><br>
    Gender: <%= e.getGender() %><br>
    DOB: <%= e.getDateofbirth() %><br>
    Department: <%= e.getDepartment() %><br>
    Salary: <%= e.getSalary() %><br>
    Email: <%= e.getEmail() %><br>
    Location: <%= e.getLocation() %><br>
    Contact: <%= e.getContact() %><br>
    Status: <%= e.getStatus() %><br>

    <%-- Uncomment the following block to display a masked password if needed --%>
    <% 
       // Uncomment if you want to mask the password
       // String password = e.getPassword(); // Assuming getPassword() method exists
       // String maskedPwd = password.replaceAll(".", "*");
    %>
    <%-- Password: <%= maskedPwd %><br> --%>
</body>
</html>
