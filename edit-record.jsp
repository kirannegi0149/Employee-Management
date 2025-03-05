<html>
<head>
<style>
/* General Body Styling */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #dde3df;
	color: #333;
}

/* Container Styling */
.container {
	width: 100%;
	max-width: 800px;
	margin: 40px auto;
	padding: 20px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

/* Form Styling */
form {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.form-group {
	display: flex;
	flex-direction: column;
}

.form-group label {
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input {
	padding: 12px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-size: 1.1em;
	width: 100%;
}

.form-group input[readonly] {
	background-color: #f9f9f9;
}

button {
	padding: 12px 20px;
	background-color: #007BFF;
	color: white;
	border: none;
	font-size: 1.1em;
	cursor: pointer;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #0056b3;
}

/* Navbar Styling */
nav {
	background-color: #007BFF;
	padding: 10px 20px;
	color: white;
	text-align: center;
}

nav a {
	color: white;
	text-decoration: none;
	margin: 0 15px;
}

nav a:hover {
	text-decoration: underline;
}
</style>
</head>
<body onload="makeActive('edit')">
	<%
	String eid = request.getParameter("eid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "mysqlkiran011");
	PreparedStatement ps = cn.prepareStatement("select * from employeeinfo where eid=?");
	ps.setString(1, eid);
	ResultSet rst = ps.executeQuery();
	if (rst.next()) {
	%>
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<form action="update-record.jsp" method="post">
			<div class="form-group">
				<label>Enter employee id</label> <input type="number"
					value="<%=rst.getString(1)%>" name="eid" readonly="readonly">
			</div>

			<div class="form-group">
				<label>Edit first name</label> <input type="text"
					value="<%=rst.getString(2)%>" name="firstname" required>
			</div>

			<div class="form-group">
				<label>Edit last name</label> <input type="text"
					value="<%=rst.getString(3)%>" name="lastname" required>
			</div>

			<div class="form-group">
				<label>Edit phone number</label> <input type="tel"
					value="<%=rst.getString(4)%>" name="phone" required>
			</div>

			<div class="form-group">
				<label>Edit department</label> <input type="text"
					value="<%=rst.getString(5)%>" name="department" required>
			</div>

			<div class="form-group">
				<label>Edit email id</label> <input type="emailid"
					value="<%=rst.getString(6)%>" name="emailid" required>
			</div>

			<div class="form-group">
				<label>Edit salary</label> <input type="number"
					value="<%=rst.getString(7)%>" name="salary" required>
			</div>

			<div class="form-group">
				<button type="submit">Update Record</button>
			</div>
		</form>
	</div>
	<%
	} else {
	%>
	<div class="container">
		<p style="color: red;">
			Employee record with ID
			<%=eid%>
			does not exist.
		</p>
	</div>
	<%
	}
	%>
</body>
</html>
