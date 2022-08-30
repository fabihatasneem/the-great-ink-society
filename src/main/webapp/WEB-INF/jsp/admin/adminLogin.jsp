<%@ page import="org.thegreatinksociety.global.GlobalVariable" %><%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 8/30/2022
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="../css/admin/adminLogin.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="../images/icon.png">
    <title>THE GREAT INK SOCIETY</title>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>

<body class="text-center">
<main class="form-signin">
    <form  action="<%=GlobalVariable.localUrl%>/adminSignInSubmit" method="POST" class="register-form" id="admin-form">
        <h1 class="h3 mb-3">THE GREAT INK SOCIETY</h1>
        <img class="mb-4" src="../images/icon.png" alt="" width="650" height="150">
        <h1 class="h3 mb-3 fw-normal">Admin Sign In</h1>
        <div style="display: flex;align-items: center; justify-content: center;">
            <div class="row">
                <div class="form-floating" style=" width:200px; height:80px;">
                    <input type="text" class="form-control" name="username" id="username" placeholder="Username">
                    <label for="username">Username</label>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="form-floating" style=" width:200px; height:80px;">
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                    <label for="password">Password</label>
                </div>
            </div>
        </div>
        <button class="btn btn-lg btn-primary" type="submit" style="width:200px; height:50px;">Sign in</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2022</p>
    </form>
</main>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>

</html>