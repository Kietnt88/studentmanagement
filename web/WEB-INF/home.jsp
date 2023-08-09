<%@page import="java.util.ArrayList"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .heading-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .heading-container h1 {
            color: #333;
            margin: 0;
        }

        .button-container {
            display: flex;
            align-items: center;
        }
        
        .button-container a {
            margin-left: 10px;
            padding: 8px 16px;
            font-size: 14px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
        }

        .button-container a:hover {
            background-color: #45a049;
        }

        .search-container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-container input[type="text"] {
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        .search-container button {
            padding: 8px 16px;
            font-size: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }

        .search-container button:hover {
            background-color: #0056b3;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        thead th {
            background-color: #f2f2f2;
        }

        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tbody tr:hover {
            background-color: #e2e2e2;
        }
    </style>
</head>
<body>
    <div class="heading-container">
        <h1>Welcome <%= session.getAttribute("userName") %></h1>
        <div class="button-container">
            <a href="./add">Add new student</a>
            <a href="./logout" style="background-color: red">Logout</a>
        </div>
    </div>
    <form class="search-container">
        <input type="text" name="search" placeholder="Search...">
        <button type="submit">Search</button>
    </form>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Gender</th>
                <th>Created At</th>
            </tr>
        </thead>
        <tbody>
            <% for (Student student : (ArrayList<Student>) request.getAttribute("students")) { %>
            <tr>
                <td><%= student.getId() %></td>
                <td><%= student.getName() %></td>
                <td><%= student.getEmail() %></td>
                <td><%= student.getPhone() %></td>
                <td><%= student.getAddress() %></td>
                <td><%= student.getGender() %></td>
                <td><%= student.getCreatedAt().format(DateTimeFormatter.ofPattern("HH:mm:ss dd-MM-yyyy")) %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
