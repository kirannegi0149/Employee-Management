<%@ include file="navbar.jsp" %>
<html>
<head>
    <style>
       /* General body styling */
    body {
        margin: 0;
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa; 
        color: #333; 
    }

    /* Centering the div */         
    .dv {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; 
        background-color: #f0f8f5; 
    }

    /* Styling for the success message */
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

    /* Hover effect for the message box */
    .message:hover {
        transform: scale(1.05); 
        box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2); 
    }

</style>
</head>
<body onload="makeActive('delete')">
    <%
    	//Loading Driver Class
        Class.forName("com.mysql.cj.jdbc.Driver");
    
    	//Creating connection object
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "mysqlkiran011");
    	
    	//Creating PreparedStatement object
        PreparedStatement ps = cn.prepareStatement("delete from employeeinfo where eid=?");
        ps.setString(1, request.getParameter("eid"));
        
        //Execute Update query
        ps.executeUpdate();
    %>
    <div class="dv">
        <label class="message">Employee record has been deleted successfully</label>
    </div>
</body>
</html>
