<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    // Get name from form
    String name = request.getParameter("username");

    // Create session and set attribute
    if (name != null) {
        session.setAttribute("user", name);
    }

    // Set session timeout to 1 minute (60 seconds)
    session.setMaxInactiveInterval(60);

    String user = (String) session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    if (user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Session will expire in 1 minute.</p>
<%
    } else {
%>
        <h2>Session expired! Please enter your name again.</h2>
<%
    }
%>

</body>
</html>