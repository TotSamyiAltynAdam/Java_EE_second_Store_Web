<%@ page import="db.User" %>
<%@include file="head.jsp"%>
<%
    User currentUser = (User) session.getAttribute("currentUser");
%>
<html>
<head>
    <style>
        .dosContainer{
            display: flex;
        }
        .dosRight{
            max-width: 48%;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid dosContainer">
            <div class="dosLeft">
                <a class="navbar-brand fw-bold" href="/"><%=siteName%></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse dosRight" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Top Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">New Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">By Category</a>
                    </li>
                    <%
                        if(currentUser!=null){
                    %>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <%=currentUser.getFullName()%>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/profile">Profile</a></li>
                            <li><a class="dropdown-item" href="/">Settings</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="/logout">Logout</a></li>
                        </ul>
                    </li>
                    <%
                    }else{
                    %>
                    <li class="nav-item ms-xxl-5">
                        <a class="nav-link" href="/login">Login</a>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </nav>
    <hr>
</body>
</html>
