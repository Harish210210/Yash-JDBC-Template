<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
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
        .form-container {
            width: 40%;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0,0.1);
        }
        .form-container form {
            display: flex;
            flex-direction: column;
        }
        .form-container label {
            margin: 10px 0 5px;
            font-weight: bold;
        }
        .form-container input[type="text"], 
        .form-container input[type="number"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .form-container input[type="submit"] {
            background-color: #005f6b;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-container input[type="submit"]:hover {
            background-color: #008c9e;
        }
    </style>
</head>
<body>
    <h2>Add Employee</h2>
    <div class="form-container">
        <form action="saveEmployee" method="post">
            <label for="employeeId">Employee ID:</label>
            <input type="text" id="employeeId" name="id" required>
            
            <label for="employeeName">Employee Name:</label>
            <input type="text" id="employeeName" name="name" required>
            
            <label for="jobRole">Job Role:</label>
            <input type="text" id="jobRole" name="role" required>
            
            <label for="salary">Salary:</label>
            <input type="number" id="salary" name="salary" required>
            
            <input type="submit" value="Save Employee">
        </form>
    </div>
</body>
</html>
            
											