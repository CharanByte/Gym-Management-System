<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assigned Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        .header {
            background: #4CAF50;
            color: white;
            padding: 10px;
            border-radius: 8px 8px 0 0;
            font-size: 20px;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        .back-btn {
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 4px;
        }
        .back-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">Assigned Users</div>

    <h3>Trainer: <c:out value="${trainerName}" /></h3>

    <table>
        <tr>
            <th>User Names</th>
        </tr>
        <c:forEach var="user" items="${assignedUsers}">
            <tr>
                <td><c:out value="${user}" /></td>
            </tr>
        </c:forEach>
    </table>

    <button class="back-btn" onclick="window.location.href='AdminPage.jsp'">Back</button>
</div>
</body>
</html>
