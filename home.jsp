<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        ol {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }

        ol li {
            margin: 10px 0;
            font-size: 18px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h1>Application Architecture</h1>
    <ol>
        <li>Controller Layer will access Service Layer</li>
        <li>Service Layer will access Repository Layer</li>
        <li>Repository Layer contains Database Logic</li>
    </ol>
</body>
</html>
