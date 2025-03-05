<%@ include file = "navbar.jsp" %>
<html>
<head>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color:#dde3df;
        }

        .content {
            margin-top: 60px; 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 50vh; 
        }

       
        form {
            background: #f9f9f9;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 16px;
            font-weight: bold;
        }

        input[type="number"] {
            padding: 8px;
            width: 200px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #d9534f;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #c9302c;
        }

        table {
            border-collapse: collapse;
        }

        td {
            padding: 20px;
        }
    </style>
</head>
<body onload="makeActive('delete')">
    
    <div class="content">
        <form action="confirm delete.jsp">
            <table>
                <tr>
                    <td><label for="eid">Enter Employee ID:</label></td>
                    <td><input type="number" name="eid" id="eid" required></td>
                    <td><button type="submit">Delete Button</button></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
