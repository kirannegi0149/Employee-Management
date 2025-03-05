<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="JS/script.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color:rgb(238,238,228); 
            font-family: Arial, sans-serif;
        }

        #navbar {
            height: 80px;
            background-color: #343a40;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        #navbar ul {
            display: flex;
            list-style-type: none;
        }

        #navbar ul li {
            margin: 0 15px;
        }

        #navbar a {
            text-decoration: none;
            color: #ffffff;
            font-size: 18px;
            display: flex;
            align-items: center;
            transition: all 0.3s ease-in-out;
        }

        #navbar a:hover {
            color: #ffc107; 
        }

        #navbar a i {
            margin-right: 8px;
        }

        .logo {
            font-size: 24px;
            color: #ffc107; 
            font-weight: bold;
        }
        @media screen and (max-width: 768px) {
            #navbar {
                flex-direction: column;
                height: auto;
            }

            #navbar ul {
                flex-direction: column;
                align-items: center;
            }

            #navbar ul li {
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <div id="navbar">
        <div class="logo">Employee Management</div>

        <ul>
            <li><a id="home" href="<%= request.getContextPath() %>/employee-management"><i class="fa fa-home"></i>Home</a></li>
            <li><a id="add" href="<%= request.getContextPath() %>/add.jsp"><i class="fa fa-user-plus"></i>Add</a></li>
            <li><a id="list" href="<%= request.getContextPath() %>/list.jsp"><i class="fa fa-list"></i>List</a></li>
            <li><a id="delete" href="<%= request.getContextPath() %>/delete.jsp"><i class="fa fa-trash"></i>Delete</a></li>
            <li><a id="edit" href="<%= request.getContextPath() %>/edit.jsp"><i class="fa fa-edit"></i>Edit</a></li>
            <li><a id="search" href="<%= request.getContextPath() %>/search.jsp"><i class="fa fa-search"></i>Search</a></li>
        </ul>       
    </div>
</body>
</html>
