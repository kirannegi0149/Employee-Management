<%@ include file="navbar.jsp"%>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0px;
            padding: 0px;
            background-color:#dde3df;
        }

        form {
            max-width: 500px;
            margin: 200px auto ;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }

        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        td {
            padding: 10px 5px;
        }

        body.onload {
            color: #444;
        }
    </style>
</head>
<body onload="makeActive('search')">
    <form action="search-record.jsp">
        <table>
            <tr>
                <td><label>Enter Employee ID</label></td>
                <td>
                    <input type="number" name="eid" required>
                </td>
                <td>
                    <button>Search</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
