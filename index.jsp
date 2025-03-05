<%@ include file="navbar.jsp" %>
<html>
<head>
<style>
    body {
        margin: 0;
    }
    .welcome-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; 
        background:#dde3df;
        color: light-black;
        text-align: center;
        } 
        
    .welcome-message {
        font-size: 4rem; 
        font-weight: bold; 
        padding: 20px 40px;
        text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5); 
        transition: transform 0.3s ease, box-shadow 0.3s ease; 
    }

    .welcome-message:hover {
        transform: scale(1.05); 
        box-shadow: 0 12px 25px rgba(0, 0, 0, 0.3); 
    }
</style>
</head>
<body onload="makeActive('home')">
    <div class="welcome-container">
        <label class="welcome-message">Welcome to the Employee Management System</label>
    </div>
</body>
</html>
