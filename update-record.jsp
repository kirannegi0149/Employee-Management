<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        table {
            margin: 50px auto;
            border-collapse: collapse;
            width: 70%;
            background: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 15px 20px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: white;
            text-align: center;
            font-size: 1.2em;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }
        button:hover {
            background-color: #0056b3;
        }
        .dvv {
            margin: 20px auto;
            width: 70%;
            text-align: center;
            padding: 10px;
            background: #fff3f3;
            border: 1px solid #f5c6cb;
            color: #721c24;
            font-size: 1.2em;
            border-radius: 5px;
        }
        .dv {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; 
        background-color: #f0f8f5;
        font-size:20px; 
    }
    .message {
        color: #28a745; 
        font-size: 1.8rem; 
        font-weight: bold; 
        text-align: center; 
        padding: 20px 40px; 
        border: 2px solid #28a745; 
        border-radius: 15px; 
        background-color: #eaffea; 
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.15); 
        transition: transform 0.3s ease, box-shadow 0.3s ease; 
    }
    .message:hover {
        transform: scale(1.05); 
        box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2); 
    }
    </style>
</head>
<body onload="makeActive('edit')">
    <%
    String eid = request.getParameter("eid");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "mysqlkiran011");

    // Update the employee details in the database
    PreparedStatement ps = cn.prepareStatement("UPDATE employeeinfo SET firstname = ?, lastname = ?, phone = ?, emailid = ?, department = ?, salary = ? WHERE eid = ?");
    ps.setString(7,eid);
    ps.setString(1,request.getParameter("firstname"));
    ps.setString(2,request.getParameter("lastname"));
    ps.setString(3,request.getParameter("phone"));
    ps.setString(4,request.getParameter("emailid"));
    ps.setString(5,request.getParameter("department"));
    ps.setString(6,request.getParameter("salary"));
    ps.executeUpdate();// Execute the update query
 
    %>
    <div class=dv>
    <label class=message> Employee record has been updated successfully</label>
    </div>
    
    
</body>
</html>
