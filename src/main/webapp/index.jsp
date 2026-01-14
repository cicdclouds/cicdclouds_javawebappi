<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cicdclouds.com</title>
    <style>
        body { font-family: Arial, sans-serif; background: linear-gradient(135deg, #74ebd5, #ACB6E5); display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 6px 15px rgba(0,0,0,0.2); text-align: center; width: 300px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome</h1>
        <form action="greet" method="post">
            <input type="text" name="userName" placeholder="Your Name" required style="width:100%; padding:10px; margin-bottom:15px;">
            <input type="submit" value="Submit" style="background:#74ebd5; border:none; padding:10px 20px; cursor:pointer;">
        </form>
    </div>
</body>
</html>