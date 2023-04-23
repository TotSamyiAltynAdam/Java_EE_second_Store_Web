<html>
<head>
    <title>Sign In Page</title>
    <style>
        .dosForm{
            margin-top: 40px;
            border-radius: 0 0 10px 10px;
        }
        .loginPageLogo{
            border-radius: 10px 10px 0 0;
            background-color: whitesmoke;
            height: 70px;
            padding: 20px;
            font-size: 20px;
        }
        .dosForm form{
            margin: 0 auto;
            border: 1px solid whitesmoke;
        }
        .dosForm form div{
            display: flex;
            justify-content: space-between;
            margin-top: 13px;
        }
        .dosForm form div input{
            width: 85%;
        }
        .dosForm form div label{
            padding: 10px;
        }
        .dosForm form div button{
            width: 80px;
        }
    </style>
</head>
<body>
    <div class="container" style="width: 950px">
        <%@include file="navbar.jsp"%>
        <%
            boolean error = (boolean) request.getAttribute("error");
            if(error){
        %>
                <div class="alert alert-danger mt-4" role="alert">
                    Incorrect <b>email</b> and <b>password!</b>
                </div>
        <%
            }
        %>
        <div class="dosForm shadow">
            <div class="loginPageLogo">
                Login Page
            </div>
            <form action="/login" method="post" class="row">
                <div>
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="user_email">
                </div>
                <div>
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="user_password">
                </div>
                <div>
                    <button type="submit" class="btn btn-success mb-3 mt-3">Login</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
