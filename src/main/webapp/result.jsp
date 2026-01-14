<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Greeting Result</title>
    <style>
        body { font-family: Arial, sans-serif; background: #ACB6E5; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .result-box { background: white; padding: 40px; border-radius: 12px; text-align: center; box-shadow: 0 4px 10px rgba(0,0,0,0.1); }
    </style>
</head>
<body>
    <div class="result-box">
        <h2 id="greetingMessage">${greetingMessage}</h2>
        <br>
        <a href="index.jsp" style="color: #74ebd5; text-decoration: none; font-weight: bold;">Back to Home</a>
    </div>
</body>
</html>
