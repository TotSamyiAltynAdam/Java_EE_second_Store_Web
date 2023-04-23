<%@ page import="db.Item" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>My Store</title>
    <style>
        .container .row .dosCard {
            margin: 0 15px;
            width: 280px;
            padding: 0;
        }
    </style>
</head>
<body>
    <div class="container" style="width: 950px">
        <%@include file="navbar.jsp"%>
        <div class="text-center mt-4"><h1 class="fw-bold">Welcome to <%=siteName%></h1></div>
        <div class="text-center mt-3"><%=slogan%></div>
        <%
            ArrayList<Item> itemsArrayList = (ArrayList<Item>) request.getAttribute("items");
            if(itemsArrayList!=null){
        %>
            <div class="container mt-3" style="width: 915px; margin: 0 auto; padding: 0">
                <div class="row">
                    <%
                        for(Item item: itemsArrayList){
                            String[] newDescr = item.getDescription().split(", ");
                    %>
                            <div class="card text-center mt-4 dosCard">
                                <div class="card-header">
                                    <%=item.getName()%>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title text-success">$<%=item.getPrice()%></h5>
                                    <p class="card-text">
                                        <%
                                            for(String newLine: newDescr){
                                        %>
                                        <span><%=newLine%></span><br>
                                        <%
                                            }
                                        %>
                                    </p>
                                    <a href="#" class="btn btn-success" style="width: 100%;">Buy Now</a>
                                </div>
                            </div>
                    <%
                        }
                    %>
                </div>
            </div>
        <%
            }
        %>
    </div>
</body>
</html>
