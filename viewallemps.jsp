<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="mainnavbar.jsp" %>
    <title>View All Employees</title>
    <style>
        /* Unique Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #333;
        }

        h3 {
            text-align: center;
            font-family: 'Georgia', serif;
            color: #0056b3; /* Dark blue for the heading */
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        table {
            width: 90%;
            max-width: 1200px;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #e9f5fb; /* Light cyan table background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow around the table */
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 16px;
            border-bottom: 2px solid #ddd;
            transition: background-color 0.3s ease; /* Smooth hover effect */
        }

        th {
            background-color: #0056b3; /* Dark blue for headers */
            color: #ffffff;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        td {
            color: #333;
            background-color: #fefefe;
        }

        tr:nth-child(even) td {
            background-color: #f7fbff; /* Very light blue for even rows */
        }

        tr:hover td {
            background-color: #d6eaff; /* Light blue on row hover */
            cursor: pointer; /* Pointer on hover */
        }

        td a {
            text-decoration: none;
            color: #0056b3;
            font-weight: bold;
        }

        /* Mobile Responsiveness */
        @media screen and (max-width: 768px) {
            table {
                width: 100%;
                font-size: 14px;
            }
            th, td {
                padding: 8px;
            }
        }

        @media screen and (max-width: 480px) {
            table, th, td {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <h3><u>View All Employees</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
