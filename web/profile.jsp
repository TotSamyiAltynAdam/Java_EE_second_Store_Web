<%@ page import="db.User" %>
<html>
<head>
    <title>My Account</title>
</head>
<body>
    <div class="container" style="width: 950px">
        <%@include file="navbar.jsp"%>
        <h1>Hello <%=currentUser!=null ? currentUser.getFullName() : ""%>!</h1>
        <h6> Welcome to <%=siteName%>)</h6>
    </div>
</body>
</html>
