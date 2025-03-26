<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   Employee e= (Employee)session.getAttribute("employee");
   if(e==null)
   {
	   response.sendRedirect("empsessionfail");
	   return;
   }
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="empnavbar.jsp" %>

    <div class="container">
        <div class="form-container">
            <h3><u>Employee Update</u></h3>
            <form method="post" action="updateemp">
                <table>
                    <tr>
                        <td><label for="ename">Enter Name</label></td>
                        <td><input type="text" id="ename" name="ename"  value="<%e.getName(); %>"  required/></td>
                    </tr>
                    <tr>
                        <td><label for="eid">ID:</label></td>
                        <td><input type="text" id="eid" name="eid"  value="<%e.getId(); %>"  required/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="egender" value="MALE" required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="egender" value="FEMALE" required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="egender" value="OTHERS" required/>
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="edob">Enter Date of Birth</label></td>
                        <td><input type="date" id="edob" name="edob" required/></td>
                    </tr>
                    <tr>
                        <td><label for="edept">Select Department</label></td>
                        <td>
                            <select id="edept" name="edept" required>
                                <option value="">---Select---</option>
                                <option value="TECHNICAL">Technical</option>
                                <option value="MARKETING">Marketing</option>
                                <option value="SALES">Sales</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="esalary">Enter Salary</label></td>
                        <td><input type="number" id="esalary" name="esalary" step="0.01" required/></td>
                    </tr>
                    <tr>
                        <td><label for="elocation">Enter Location</label></td>
                        <td><input type="text" id="elocation" name="elocation" required/></td>
                    </tr>
                    <tr>
                        <td><label for="eemail">Enter Email ID</label></td>
                        <td><input type="email" id="eemail" name="eemail" value="<%e.getEmail(); %>"  readonly="readonly"  required/></td>
                    </tr>
                    <tr>
                        <td><label for="epwd">Enter Password</label></td>
                        <td><input type="password" id="epwd" name="epwd" required/></td>
                    </tr>
                    <tr>
                        <td><label for="econtact">Enter Contact</label></td>
                        <td><input type="number" id="econtact" name="econtact" required/></td>
                    </tr>
                    <tr class="button-container">
                        <td colspan="2">
                            <button type="submit">Register</button>
                            <button type="reset">Clear</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>

    <!-- Add Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>