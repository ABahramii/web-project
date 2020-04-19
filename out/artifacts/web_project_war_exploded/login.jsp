<%--
  Created by IntelliJ IDEA.
  User: Amir
  Date: 4/18/2020
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="./css/loginPage.css">
</head>
<body>
<div id="error">
    ${error}
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Sign In</h5>
                    <form class="form-signin" action="/web_project_war_exploded/login" method="post">
                        <div class="form-label-group">
                            <input type="text" name="name" id="inputName" class="form-control" placeholder="Email address" required autofocus>
                            <label for="inputName">Name</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
                            <label for="inputPassword">Password</label>
                        </div>

                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
