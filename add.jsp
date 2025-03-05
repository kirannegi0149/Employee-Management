<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background:#dde3df ;
        }

        .navbar {
            width: 100%; 
            padding: 10px 20px;
        }

        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            max-width: 500px;
            width: 1000%;
            background: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .container h2 {
            text-align: center;
            color: #0984e3;
            margin-bottom: 20px;
        }

        .input-box {
            margin-bottom: 15px;
        }

        .input-box label {
            display: block;
            margin-bottom: 5px;
            color: #2d3436;
            font-weight: bold;
        }

        .input-box input {
            width: 100%;
            padding: 10px;
            border: 1px solid #dcdde1;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s;
        }

        .input-box input:focus {
            border-color: #0984e3;
        }

        .input-box button {
            width: 100%;
            padding: 10px;
            background: #0984e3;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .input-box button:hover {
            background: #74b9ff;
        }
    </style>
</head>
<body onload="makeActive('add')">
    <div class="navbar">
    </div>
    <div class="content">
        <form action="save.jsp" method="post">
            <div class="container">
                <h2>Add Employee Record</h2>
                <div class="input-box">
                    <label for="eid">Enter Employee ID:</label>
                    <input type="number" id="eid" placeholder="Enter Employee ID" name="eid" required>
                </div>
                <div class="input-box">
                    <label for="fname">First Name:</label>
                    <input type="text" id="fname" placeholder="First Name" name="firstname" required>
                </div>
                <div class="input-box">
                    <label for="lname">Last Name:</label>
                    <input type="text" id="lname" placeholder="Last Name" name="lastname" required>
                </div>
                <div class="input-box">
                    <label for="phone">Phone Number:</label>
                    <input type="number" id="phone" placeholder="Phone Number" name="phone" required>
                </div>
                <div class="input-box">
                    <label for="department">Department:</label>
                    <input type="text" id="department" placeholder="Department" name="department" required>
                </div>
                <div class="input-box">
                    <label for="emailid">Email ID:</label>
                    <input type="emailid" id="emailid" placeholder="Email ID" name="emailid" required>
                </div>
                <div class="input-box">
                    <label for="salary">Salary:</label>
                    <input type="number" id="salary" placeholder="Salary" name="salary" required>
                </div>
                <div class="input-box">
                    <button type="submit">Add Record</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
