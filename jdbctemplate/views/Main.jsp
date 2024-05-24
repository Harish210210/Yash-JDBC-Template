<%@ page language="java" import="com.yash.crud.*,java.util.*,com.yash.model.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Table</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: url('https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png');
            color: #333;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #005f6b;
            margin-bottom: 40px;
        }
        table {
            width: 70%;
            margin: 0 auto;
            border-collapse: collapse;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        thead {
            background: linear-gradient(to right, #005f6b, #008c9e);
            color: white;
        }
        th, td {
            padding: 14px;
            text-align: left;
        }
        th {
            text-transform: uppercase;
            letter-spacing: 0.1em;
        }
        tbody tr {
            background-color: white;
            transition: background-color 0.3s;
        }
        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tbody tr:hover {
            background-color: #e1f5fe;
        }
        .button-container {
            text-align: center;
            margin: 20px 0;
        }
        .button-container button {
            background-color: #005f6b;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .button-container button:hover {
            background-color: #008c9e;
        }
        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 0.9em;
            color: #888;
        }
    </style>
</head>
<body>
    <h2>Employee Table</h2>
    <table>
        <thead>
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Job Role</th>
                <th>Salary</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
           <% 
                List<Employee> employees = (List<Employee>) request.getAttribute("employees");
                System.out.println("employees:"+employees);
                if (employees != null) {
                    for (Employee employee : employees) {
            %>
                <tr>
                    <td><%= employee.getId() %></td>
                    <td><%= employee.getName() %></td>
                    <td><%= employee.getRole() %></td>
                    <td><%= employee.getSalary() %></td>
                    <td>
                        <form action="editEmployee" method="get" style="display:inline;">
                            <input type="hidden" name="employeeId" value="<%= employee.getId() %>">
                            <button type="submit">Edit</button>
                        </form>
                        <form action="deleteEmployee" method="post" style="display:inline;">
                            <input type="hidden" name="employeeId" value="<%= employee.getId() %>">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            <% 
                    } 
                }
            %>
        </tbody>
    </table>
    <div class="button-container">
        <form action="addemp" method="get">
            <button type="submit">Add Employee</button>
        </form>
    </div>
    <footer>
        &copy; 2024 Your Company. All rights reserved.
    </footer>
</body>
</html>
