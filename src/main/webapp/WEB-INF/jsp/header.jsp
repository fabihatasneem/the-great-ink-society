<%@ page import="org.thegreatinksociety.global.GlobalVariable" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png" />
    <!-- Author Meta -->
    <meta name="author" content="colorlib" />
    <!-- Meta Description -->
    <meta name="description" content="" />
    <!-- Meta Keyword -->
    <meta name="keywords" content="" />
    <!-- meta character set -->
    <meta charset="UTF-8" />
    <!-- Site Title -->
    <title>The Great Ink Society</title>

    <!-- Fonts Start-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet" />
    <!-- Fonts End -->

    <!-- CSS Start ============================================= -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/linearicons@1.0.2/dist/web-font/style.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css" integrity="sha512-WEQNv9d3+sqyHjrqUZobDhFARZDko2wpWdfcpv44lsypsSuMO0kHGd3MQ8rrsBn/Qa39VojphdU6CMkpJUmDVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.css" integrity="sha512-uHuCigcmv3ByTqBQQEwngXWk7E/NaPYP+CFglpkXPnRQbSubJmEENgh+itRDYbWV0fUZmUz7fD/+JDdeQFD5+A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/themes/base/jquery-ui.min.css" integrity="sha512-ELV+xyi8IhEApPS/pSj66+Jiw+sOT1Mqkzlh8ExXihe4zfqbWkxPRi8wptXIO9g73FSlhmquFlUOuMSoXz5IRw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" integrity="sha512-1cK78a1o+ht2JcaW6g8OXYwqpev9+6GqOkz9xmBN9iUUhIndKtxwILGWYOSibOKjLsEdjyjZvYDq/cZwNeak0w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" />


    <link rel="stylesheet" href="css/global/headernav.css" />
    <link rel="stylesheet" href="css/global/styles.css" />

    <!-- CSS END -->
</head>
<style>
    .fa-heart-o {
        color: red;
        cursor: pointer;
    }

    .fa-heart {
        color: red;
        cursor: pointer;
    }
</style>
<body>
<header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="<%=GlobalVariable.localUrl%>" class="logo"><img src="images/icon.png" alt="" class="img-fluid"></a>

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li><a href="<%=GlobalVariable.localUrl%>">Home</a></li>
                <li><a href="<%=GlobalVariable.localUrl%>/writingIndex">Writing</a></li>
                <li><a href="<%=GlobalVariable.localUrl%>/podcastIndex">Podcast</a></li>
                <li><a href="<%=GlobalVariable.localUrl%>/events">Events</a></li>
                <li><a href="<%=GlobalVariable.localUrl%>/genre">Genre</a></li>
                <li><a class="nav-icon d-none d-lg-inline" href="#" data-toggle="modal" data-target="#templatemo_search">
                    <i class="fa fa-fw fa-search text-white mr-2"></i>
                </a></li>
            </ul>
        </nav>
        <!-- .nav-menu -->

        <%
            if (session.getAttribute("username") != null) { %>
        <nav class="nav-menu">
            <ul>
                <li class="drop-down">
                    <a href="">My Profile</a>
                    <ul style="left: auto">
                        <li><a href="<%=GlobalVariable.localUrl%>/myProfile">View Profile</a></li>
                        <li><a href="<%=GlobalVariable.localUrl%>/bookCreate">Write a Story</a></li>
                        <li><a href="<%=GlobalVariable.localUrl%>/podcastCreate">Upload a Podcast</a></li>
                        <li><a href="<%=GlobalVariable.localUrl%>/accountSettings">Account Settings</a></li>
                        <hr>
                        <li><a href="<%=GlobalVariable.localUrl%>/signOut">Sign Out</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
            <%} else { %>
        <a style="font-family: 'Open Sans', sans-serif; font-weight: 400;" href="<%=GlobalVariable.localUrl%>/signIn" class="get-started-btn scrollto">Sign In</a>
            <%}
        %>




    </div>
</header>

<div style="opacity: 0.9; background-color: #2e2e2e !important" class="modal fade bg-white"
     id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="w-100 pt-1 mb-5 text-right">
            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="" method="get" class="modal-content modal-body border-0 p-0">
            <div class="input-group mb-2">
                <input type="text" class="form-control" id="inputModalSearch" name="q"
                       placeholder="Search ..." />
                <button type="submit" class="input-group-text bg-success text-light">
                    <i class="fa fa-fw fa-search text-white"></i>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- #header -->
<!-- start banner Area -->
