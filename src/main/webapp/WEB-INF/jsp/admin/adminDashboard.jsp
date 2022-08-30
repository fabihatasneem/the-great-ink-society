<%@ page import="org.thegreatinksociety.global.GlobalVariable" %><%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 8/30/2022
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="../images/icon.png">
    <link href="../css/admin/adminDashboard.css" rel="stylesheet" type="text/css" />
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
    <title>THE GREAT INK SOCIETY</title>
</head>

<body>
<main>
    <div class="d-flex flex-column min-vh-100 flex-shrink-0 p-2 text-white bg-dark" style="width: 230px;">
        <a href="/admin/login"
           class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <span class="fs-4">Admin Portal</span>
        </a>
        <hr>
        <div>
            <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                <li><a onclick="<%=GlobalVariable.localUrl%>/adminSignOut" class="dropdown-item" href="#">Sign out</a></li>
            </ul>
        </div>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a href="<%=GlobalVariable.localUrl%>/" class="nav-link active" aria-current="page">
                    Home
                </a>
            </li>
            <li>
                <a href="" onclick="eventList()" class="nav-link text-white">
                    Events
                </a>
            </li>
            <li>
                <a href="#" onclick="reportList()" class="nav-link text-white">
                    Complaints
                </a>
            </li>
            <li>
                <a href="#" onclick="userList()" class="nav-link text-white">
                    Users
                </a>
            </li>
        </ul>
    </div>

    <div class="p-3" id="mainContents" style="width: 100%;">

    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
    window.onload = async () => {
        // if (sessionStorage.getAttribute("adminId") == null) {
        //     window.location.replace("/admin/dashBoard");
        // }

        <%--const Admin_Name = sessionStorage.getItem("adminName");--%>

        <%--document.getElementById("admin_name").innerHTML = Admin_Name;--%>
        <%--document.getElementById(--%>
        <%--    "mainContents"--%>
        <%--).innerHTML = `<h1> Welcome, ${Admin_Name} </h1>`;--%>
    };

    $(function () {
        $("li").click(function () {
            // remove classes from all
            $("li").removeClass("nav-item");
            $("li").children().removeClass("active");
            $("li").children().addClass("text-white");
            // add class to the one we clicked
            $(this).children().removeClass("text-white");
            $(this).children().addClass("active");
        });
    });

    const home = async () => {
        const MainContent = document.getElementById("mainContents");
        const Admin_Name = sessionStorage.getItem("adminName");
        let design = `<h1> Welcome, ${Admin_Name} </h1>`;

        MainContent.innerHTML = design;
    };

    const userList = async () => {
        const response = await fetch("<%=GlobalVariable.localUrl%>/getUsers", {
            method: "GET",
            headers: {
                "Content-Type": "application/json",
            },
        });

        let ResponseObj = await response.json();
        console.log(ResponseObj);

        let design = `<div class="row">
              <h2 align="center"> USERS </h2>
              </div>
              <hr>`;

        design += `<table class="table" style="font-size:smaller">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">User ID</th>
                        <th scope="col">Username</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>`;

        for(let i = 0; i < ResponseObj.length; i++) {
            design += `<tr>
                        <td>` + i + `</td>
                        <th scope="row">` + ResponseObj[i].id + `</th>
                        <td id="">` + ResponseObj[i].userName + `</td>
                        <td>` + ResponseObj[i].fullName + `</td>
                        <td>` + ResponseObj[i].email + `</td>
                        <td><button id="` + ResponseObj[i].id + `" value="` + ResponseObj[i].id + `" onclick="banThisUser(` + ResponseObj[i].id + `)"
                        class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#banUserModal">Ban</button>
                        </td>
                    </tr>`;
        }

        design += `</tbody>
                </table>`;
        document.getElementById("mainContents").innerHTML = design;
    };

    const banThisUser = async (userId) => {

        $.post("<%=GlobalVariable.localUrl%>/banUser", {userId: userId}, function (data) {
            console.log(data);
            // window.location.replace("/admin/dashBoard");
        });

    };

    const reportList = async () => {
        const response = await fetch("<%=GlobalVariable.localUrl%>/getReports", {
            method: "GET",
            headers: {
                "Content-Type": "application/json",
            },
        });

        let ResponseObj = await response.json();
        console.log(ResponseObj);

        let design = `<div class="row">
              <h2 align="center"> REPORTS </h2>
              </div>
              <hr>`;

        design += `<table class="table" style="font-size:smaller">
                    <thead>
                    <tr>
                        <th scope="col">Report ID</th>
                        <th scope="col">Date</th>
                        <th scope="col">Complainant</th>
                        <th scope="col">Convict</th>
                        <th scope="col">Description</th>
                        <th scope="col">Reference Link</th>
                        <th scope="col">Book</th>
                        <th scope="col">Chapter</th>
                        <th scope="col">Podcast</th>
                        <th scope="col">Episode</th>
                        <th scope="col">Resolve Status</th>
                    </tr>
                    </thead>
                    <tbody>`;

        for(let i = 0; i < ResponseObj.length; i++) {
            let date = "";
            if (ResponseObj[i].date != null) {
                date = ResponseObj[i].date;
                date = date.split("T");
                date = date[0];
            }
            let bookId = "";
            if(ResponseObj[i].books != null){
                bookId = ResponseObj[i].books.id;
            }
            let chapterId = "";
            if(ResponseObj[i].chapters != null){
                chapterId = ResponseObj[i].chapters.id;
            }
            let podcastSeriesId = "";
            if(ResponseObj[i].podcastSeries != null){
                podcastSeriesId = ResponseObj[i].podcastSeries.id;
            }
            let episodesId = "";
            if(ResponseObj[i].episodes != null){
                episodesId = ResponseObj[i].episodes.id;
            }
            design += `<tr>
                        <th scope="row">` + ResponseObj[i].id + `</th>
                        <td>` + date + `</td>
                        <td id="">` + ResponseObj[i].user.userName + `</td>
                        <td>` + ResponseObj[i].convict.userName + `</td>
                        <td>` + ResponseObj[i].description + `</td>
                        <td>` + ResponseObj[i].referenceLink + `</td>
                        <td>` + bookId + `</td>
                        <td>` + chapterId + `</td>
                        <td>` + podcastSeriesId + `</td>
                        <td>` + episodesId + `</td>
                        <td>` + ResponseObj[i].solveStatus + `</td>
                    </tr>`;
        }

        design += `</tbody>
                </table>`;
        document.getElementById("mainContents").innerHTML = design;
    };

</script>
</body>

</html>