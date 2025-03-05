<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#dde3df;
            margin: 0;
            padding: 0;
        }
        .table-container {
            max-width: 80%;
            margin: 50px auto;
            background: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
            background-color: #ffffff;
        }
        thead tr {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
        }
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
            cursor: pointer;
        }
        @media screen and (max-width: 768px) {
            table {
                display: block;
                overflow-x: auto;
            }

            thead tr {
                display: block;
            }

            tbody tr {
                display: table-row;
            }
        }

        /* Styling the page title */
        .title {
       		font-weight:bold;
            text-align: center;
            margin: 20px;
            font-size: 30px;
            color: #333333;
        }
    </style>
</head>
<body onload="makeActive('list')">
    <div class="title">Employee Information</div>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Department</th>
                    <th>Email id</th>
                    <th>Salary</th>
                </tr>
            </thead>
            <tbody>
                <%
           			
                	// Load MY SQL Driver
                    Class.forName("com.mysql.cj.jdbc.Driver");
                	
                	//Established database connection
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "mysqlkiran011");
                	
                	//Statement Query
                    Statement st = cn.createStatement();
                	
                	//Execute the resultset query
                    ResultSet rst = st.executeQuery("select * from employeeinfo");
                    while (rst.next()) 
                    {
                %>
                <tr>
                    <td><%=rst.getString(1) %></td>
                    <td><%=rst.getString(2) %></td>
                    <td><%=rst.getString(3) %></td>
                    <td><%=rst.getString(4) %></td>
                    <td><%=rst.getString(5) %></td>
                    <td><%=rst.getString(6) %></td>
                    <td><%=rst.getString(7) %></td>
                </tr> 
                <%
              	}
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
