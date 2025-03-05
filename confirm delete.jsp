<html>
<head>
    <style>
        body {
            
            margin: 0;
            padding: 0;
           
        }
        table {
            margin: 50px auto;
            border-collapse: collapse;
            width: 40%;
            background: #c9cfd2;
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
            
            color: black;
            text-align: center;
            font-size: 1.2em;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        button {
            background-color: #dc3545;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }
        button:hover {
            background-color: #c82333;
        }
        .dvv {
            margin: 40px auto;
            width: 70%;
            text-align: center;
            padding: 10px;
            background: #dde3df;
            border: 1px solid #f5c6cb;
            color: #721c24;
            font-size: 1.2em;
            border-radius: 5px;
        }
    </style>
</head>
<body onload="makeActive('delete')">
    <%
        String eid = request.getParameter("eid");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "mysqlkiran011");
        PreparedStatement ps = cn.prepareStatement("select * from employeeinfo where eid=?");
        ps.setString(1, eid);
        ResultSet rst = ps.executeQuery();
        if (rst.next()) {
    %>
    <%@ include file="navbar.jsp" %>
    <form action="delete-record.jsp">
        <table>
            <tr>
                <th colspan="2" style="color:white; background-color:#565a62; font-size:20px;">Employee Details</th>
            </tr>
            <tr>
                <th>Employee Id</th>
                <td><%=eid%><input type="hidden" name="eid" value="<%=eid%>"></td>
            </tr>
            <tr>
                <th>First Name</th>
                <td><%=rst.getString(2)%></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><%=rst.getString(3)%></td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td><%=rst.getString(4)%></td>
            </tr>
            <tr>
                <th>Department</th>
                <td><%=rst.getString(5)%></td>
            </tr>
            <tr>
                <th>Email id</th>
                <td><%=rst.getString(6)%></td>
            </tr>
            <tr>
                <th>Salary</th>
                <td>&#8377;<%=rst.getString(7)%></td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    <button type="submit">Confirm Delete</button>
                </td>
            </tr>
        </table>
    </form>
    <%
        } else {
    %>
    <jsp:include page="delete.jsp" />
    <div class="dvv">
        <label>Employee record with id <%=eid%> does not exist</label>
    </div>
    <%
        }
    %>
</body>
</html>
