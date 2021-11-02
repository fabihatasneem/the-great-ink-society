<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/reading/main.css"/>
<link rel="stylesheet" href="css/profile/style.css"/>

<style>
    .cycle-tab-container {
        margin: 0px;
        padding: 20px;
        box-shadow: 0 0 10px 2px #ddd;
    }

    .cycle-tab-container a {
        color: #173649;
        font-size: 18px;
        font-family: roboto;
        text-align: center;
    }

    .tab-pane {
        height: auto !important;
        margin-top: 15px;
        width: auto;
        max-width: 100%;
    }

    .fade {
        opacity: 0;
        /*   transition: opacity 4s ease-in-out; */
    }

    .fade.active {
        opacity: 1;
    }

    .cycle-tab-item {
        width: 135px;
    }

    .cycle-tab-item:after {
        display: block;
        content: "";
        border-bottom: solid 3px orange;
        transform: scaleX(0);
        /*   transition: transform 0ms ease-out; */
    }

    .cycle-tab-item.active:after {
        transform: scaleX(1);
        transform-origin: 0% 50%;
        /*   transition: transform 5000ms ease-in; */
    }

    .nav-link:focus,
    .nav-link:hover,
    .cycle-tab-item.active a {
        border-color: transparent !important;
        color: orange;
    }

    .card {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        transition: 0.3s;
        border-radius: 5px;
        cursor: pointer;
        width: 28%;
        padding: unset;
        height: fit-content;
    }

    .card:hover {
        box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
    }

    img {
        border-radius: 5px 5px 0 0;
    }

    .card-img-top {
        object-fit: contain;
        height: 132px;
    }

    .tab-content {
        margin: 0px;
        padding: 20px;
        box-shadow: 0 0 10px 2px #ddd;
        width: -webkit-fill-available;
    }

    .card-horizontal {
        display: flex;
        flex: 1 1 auto;
    }

    .profile-pic {
        align-content: center;
        background-position: center;
        background-blend-mode: multiply;
        vertical-align: middle;
        text-align: center;
        color: transparent;
        transition: all .3s ease;
        text-decoration: none;
    }

    .profile-pic img {
        height: 150px;
        width: 150px;
        border-radius: 50%;
        cursor: pointer;
    }

    .profile-pic img:hover {
        background-color: rgba(0, 0, 0, .5);
        color: #fff;
        transition: all .3s ease;
        text-decoration: none;
        opacity: 0.6;
    }

    .profile-pic span {
        display: inline-block;
        padding-top: 4.5em;
        padding-bottom: 4.5em;
    }

    form input[type="file"] {
        display: none;
        cursor: pointer;
    }
</style>


<!-- start banner Area -->
<section class="banner-area relative" id="personal2">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12" style="margin-top: 60px">
                <div class="profile-pic">
                    <span class="glyphicon glyphicon-camera"></span>
                    <img id="profilePicture" class="img-circle img-profile img-thumbnail lazy"
                         alt="Profile Picture" data-toggle="modal" data-target="#pictureModal"/>
                </div>
                <div class="modal fade bd-example-modal-sm" id="pictureModal" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-sm">
                        <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">New Profile Picture</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            <form action="<%=GlobalVariable.localUrl%>/userProfilePictureUpdate" method="POST"
                                  enctype="multipart/form-data">
                                <div class="modal-body">
                                    <label for="profilePictureUpload" style="cursor: pointer">
                                        <b>Choose From Gallery</b>
                                        <input type="file" class="form-control" name="profilePictureUpload"
                                               id="profilePictureUpload">
                                    </label>
                                </div>
                                <div class="modal-footer justify-content-center">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <p>
                <h3 style="color: white;" id="profileFullName">Full Name</h3>
                <h6 style="color: rgb(196, 190, 190);" id="profileUsername">@</h6>
                </p>
                <p>
                    <i style="color: #daa520" class="fas fa-trophy" id="numberOfAwards"></i> &nbsp; &nbsp;
                    <i style="color: #abf6ff" class="fas fa-award" id="numberOfBadges"></i> &nbsp; &nbsp;
                    <i style="color: #ffabab" class="fas fa-users" id="numberOfFollowers"></i>
                </p>
                <br>
                <p id="profileBio" style="color: #9c9c9c"></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- Modal Start -->
<div style="opacity: 0.9; background-color: #ea6161 !important" class="modal fade bg-white" id="templatemo_search"
     tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="w-100 pt-1 mb-5 text-right">
            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="" method="get" class="modal-content modal-body border-0 p-0">
            <div class="input-group mb-2">
                <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ..."/>
                <button type="submit" class="input-group-text bg-success text-light">
                    <i class="fa fa-fw fa-search text-white"></i>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- Modal End -->
<br/>
<!-- Nav tabs Start -->
<div class="container">
    <div class="text-center">
        <a href="bookCreate">
            <button class="btn btn-round btn-outline-warning">
                Write a Story
            </button>
        </a>
        <a href="podcastCreate">
            <button class="btn btn-round btn-outline-danger">
                Upload a Podcast
            </button>
        </a>
    </div>
    <br>
    <br>
    <div class="d-flex align-items-start">
        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a style="cursor: pointer;" class="nav-link active show" id="v-pills-overview-tab" data-toggle="pill"
               data-target="#v-pills-overview" role="tab" aria-controls="v-pills-overview"
               aria-selected="true">Overview</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-mybooks-tab" data-toggle="pill"
               data-target="#v-pills-mybooks" role="tab" aria-controls="v-pills-mybooks" aria-selected="false">My
                Books</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-mypodcasts-tab" data-toggle="pill"
               data-target="#v-pills-mypodcasts" role="tab" aria-controls="v-pills-mypodcasts" aria-selected="false">My
                Podcasts</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-badges-tab" data-toggle="pill"
               data-target="#v-pills-badges" role="tab" aria-controls="v-pills-badges" aria-selected="false">My
                Badges</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-awards-tab" data-toggle="pill"
               data-target="#v-pills-awards" role="tab" aria-controls="v-pills-awards" aria-selected="false">Awards and
                Competitions</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-followers-tab" data-toggle="pill"
               data-target="#v-pills-followers" role="tab" aria-controls="v-pills-followers" aria-selected="false">Followers</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-followings-tab" data-toggle="pill"
               data-target="#v-pills-followings" role="tab" aria-controls="v-pills-followings" aria-selected="false">Followings</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-subscribes-tab" data-toggle="pill"
               data-target="#v-pills-subscribes" role="tab" aria-controls="v-pills-subscribes" aria-selected="false">Subscribes</a>
            <a style="cursor: pointer;" class="nav-link" id="v-pills-saved-tab" data-toggle="pill"
               data-target="#v-pills-saved" role="tab" aria-controls="v-pills-saved" aria-selected="false">My Saved
                Lists</a>
        </div>
        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade active show in" id="v-pills-overview" role="tabpanel"
                 aria-labelledby="v-pills-overview-tab">
                <div class="card-body">
                    <form action="<%=GlobalVariable.localUrl%>/userProfileUpdate" method="POST">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">Personal Details</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label style="font-weight:500;" for="fullName">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" name="fullName"
                                           placeholder="Enter full name" required>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label style="font-weight:500;" for="email">Email</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                           placeholder="Enter email ID" required>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label style="font-weight:500;" for="phone">Mobile</label>
                                    <input type="text" class="form-control" id="phone" name="phone"
                                           placeholder="Enter phone number">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label style="font-weight:500;" for="username">Username</label>
                                    <input type="text" class="form-control" disabled id="username" name="username"
                                           placeholder="Username">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label style="font-weight:500;" for="location">Location</label>
                                    <input type="text" class="form-control" id="location" name="location"
                                           placeholder="Location">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label style="font-weight:500;" for="gender">Gender</label>
                                    <input type="text" class="form-control" id="gender" name="gender" disabled
                                           placeholder="Gender">
                                </div>
                            </div>
                            <div class="form-group">
                                <label style="font-weight:500;" for="bio">Bio</label>
                                <textarea class="form-control" id="bio" name="bio" placeholder="User Bio"></textarea>
                            </div>
                        </div>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right">
                                    <button type="submit" id="submit" name="submit" class="btn btn-primary">Update
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-mybooks" role="tabpanel" aria-labelledby="v-pills-mybooks-tab">
                <div class="container-fluid">
                    <div class="row" id="mybooks-row" style="margin-left: 1px; row-gap: 15px; column-gap: 5.1%;">

                    </div>
                </div>

            </div>
            <div class="tab-pane fade" id="v-pills-mypodcasts" role="tabpanel" aria-labelledby="v-pills-mypodcasts-tab">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 mt-3" id="mypodcasts-col">

                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-badges" role="tabpanel" aria-labelledby="v-pills-badges-tab">
                <div class="team-boxed">
                    <div class="container">
                        <div class="row people" id="mybadges-row">

                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-awards" role="tabpanel" aria-labelledby="v-pills-awards-tab">
                <div class="team-boxed">
                    <div class="container">
                        <div class="row people" id="myawards-row">

                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-followers" role="tabpanel" aria-labelledby="v-pills-followers-tab">
                <div class="list-group" id="myfollowers-list">

                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-followings" role="tabpanel" aria-labelledby="v-pills-followings-tab">

                <div class="list-group" id="myfollowings-list">

                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-subscribes" role="tabpanel" aria-labelledby="v-pills-subscribes-tab">
                <!-- <div class="team-boxed">
                    <div class="container">
                        <div class="row people">
                            <div class="col-md-6 col-lg-4 item">
                                <div class="box"><img class="rounded-circle"
                                        src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                    <h5 class="name">Ben Johnson</h5>
                                    <small><i class="fas fa-users"></i> 100 &nbsp; <i
                                            class="fas fa-book-open"></i> 100 &nbsp; <i
                                            class="fas fa-podcast"></i> 100</small>
                                            <br>
                                    <button style="font-size: 10px;" type="button" class="btn btn-danger">Unsubscribe</button></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                <div class="list-group" id="mysubscribers-list">

                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-saved" role="tabpanel" aria-labelledby="v-pills-saved-tab">
                <div class="cycle-tab-container">
                    <ul class="nav nav-tabs">
                        <li class="cycle-tab-item active">
                            <a class="nav-link" role="tab" data-toggle="tab" href="#books">Books</a>
                        </li>
                        <li class="cycle-tab-item">
                            <a class="nav-link" role="tab" data-toggle="tab" href="#podcasts">Podcasts</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="books" role="tabpanel"
                             aria-labelledby="books-tab">
                            <!-- Books List -->
                            <div class="d-flex align-items-start">
                                <div class="nav flex-column nav-pills me-3" id="v-pills-tab2" role="tablist"
                                     aria-orientation="vertical">
                                    <a style="cursor: pointer;" class="nav-link active"
                                       id="v-pills-bookfavs-tab" data-toggle="pill"
                                       data-target="#v-pills-bookfavs" role="tab"
                                       aria-controls="v-pills-bookfavs" aria-selected="true">Favourites</a>
                                    <a style="cursor: pointer;" class="nav-link" id="v-pills-booklater-tab"
                                       data-toggle="pill" data-target="#v-pills-booklater" role="tab"
                                       aria-controls="v-pills-booklater" aria-selected="false">Listen
                                        Later</a>
                                </div>
                                <div class="tab-content" id="v-pills-tabContent2">
                                    <div class="tab-pane fade show active in" id="v-pills-bookfavs"
                                         role="tabpanel" aria-labelledby="v-pills-bookfavs-tab">
                                        <!-- Books List 1 -->
                                        <div class="row"
                                             style="margin-left: 1px; column-gap: 6.5%; row-gap: 15px;">
                                            <div class="card">
                                                <img class="card-img-top"
                                                     src="https://www.w3schools.com/howto/img_avatar2.png"
                                                     alt="Avatar">
                                                <div class="container"
                                                     style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">
                                                    <h4><b>Book Name</b></h4>
                                                    <p><small><i class="fas fa-heart"
                                                                 style="color:red;"></i> 78 &nbsp; <i
                                                            class="fas fa-comments"></i> 87 &nbsp; <i
                                                            class="fas fa-eye"></i>
                                                        100</small></p>
                                                    <hr>
                                                    <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem
                                                        Ipsum a a a a a a a a a
                                                        .....</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <img class="card-img-top"
                                                     src="https://www.w3schools.com/howto/img_avatar2.png"
                                                     alt="Avatar">
                                                <div class="container"
                                                     style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">
                                                    <h4><b>Book Name</b></h4>
                                                    <p><small><i class="fas fa-heart"
                                                                 style="color:red;"></i> 78 &nbsp; <i
                                                            class="fas fa-comments"></i> 87 &nbsp; <i
                                                            class="fas fa-eye"></i>
                                                        100</small></p>
                                                    <hr>
                                                    <p>Lorem Ipsum Lorem Ipsum Loremem Ipsum a a a a a a a a
                                                        a .....</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <img class="card-img-top"
                                                     src="https://www.w3schools.com/howto/img_avatar2.png"
                                                     alt="Avatar">
                                                <div class="container"
                                                     style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">
                                                    <h4><b>Book Name</b></h4>
                                                    <p><small><i class="fas fa-heart"
                                                                 style="color:red;"></i> 78 &nbsp; <i
                                                            class="fas fa-comments"></i> 87 &nbsp; <i
                                                            class="fas fa-eye"></i>
                                                        100</small></p>
                                                    <hr>
                                                    <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem
                                                        Ipsum a a a a a a a a a
                                                        .....</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <img class="card-img-top"
                                                     src="https://www.w3schools.com/howto/img_avatar2.png"
                                                     alt="Avatar">
                                                <div class="container"
                                                     style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">
                                                    <h4><b>Book Name</b></h4>
                                                    <p><small><i class="fas fa-heart"
                                                                 style="color:red;"></i> 78 &nbsp; <i
                                                            class="fas fa-comments"></i> 87 &nbsp; <i
                                                            class="fas fa-eye"></i>
                                                        100</small></p>
                                                    <hr>
                                                    <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem
                                                        Ipsum a a a a a a a a a
                                                        .....</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-booklater" role="tabpanel"
                                         aria-labelledby="v-pills-booklater-tab">

                                        <!-- Books List 2 -->
                                        <div class="row"
                                             style="margin-left: 1px; column-gap: 6.5%; row-gap: 15px;">
                                            <div class="card">
                                                <img class="card-img-top"
                                                     src="https://www.w3schools.com/howto/img_avatar2.png"
                                                     alt="Avatar">
                                                <div class="container"
                                                     style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">
                                                    <h4><b>Book Name</b></h4>
                                                    <p><small><i class="fas fa-heart"
                                                                 style="color:red;"></i> 78 &nbsp; <i
                                                            class="fas fa-comments"></i> 87 &nbsp; <i
                                                            class="fas fa-eye"></i>
                                                        100</small></p>
                                                    <hr>
                                                    <p>Lorem Ipsum Lorem Ipsum Loremem Ipsum a a a a a a a a
                                                        a .....</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <img class="card-img-top"
                                                     src="https://www.w3schools.com/howto/img_avatar2.png"
                                                     alt="Avatar">
                                                <div class="container"
                                                     style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">
                                                    <h4><b>Book Name2</b></h4>
                                                    <p><small><i class="fas fa-heart"
                                                                 style="color:red;"></i> 78 &nbsp; <i
                                                            class="fas fa-comments"></i> 87 &nbsp; <i
                                                            class="fas fa-eye"></i>
                                                        100</small></p>
                                                    <hr>
                                                    <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem
                                                        Ipsum a a a a a a a a a
                                                        .....</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="podcasts" role="tabpanel"
                             aria-labelledby="podcasts-tab">
                            <!-- Podcasts List -->
                            <div class="d-flex align-items-start">
                                <div class="nav flex-column nav-pills me-3" id="v-pills-tab3" role="tablist"
                                     aria-orientation="vertical">
                                    <a style="cursor: pointer;" class="nav-link active"
                                       id="v-pills-podcastfav-tab" data-toggle="pill"
                                       data-target="#v-pills-podcastfav" role="tab"
                                       aria-controls="v-pills-podcastfav"
                                       aria-selected="true">Favourites</a>
                                    <a style="cursor: pointer;" class="nav-link"
                                       id="v-pills-podcastlater-tab" data-toggle="pill"
                                       data-target="#v-pills-podcastlater" role="tab"
                                       aria-controls="v-pills-podcastlater" aria-selected="false">Listen
                                        Later</a>
                                </div>
                                <div class="tab-content" id="v-pills-tabContent3">
                                    <div class="tab-pane fade show active" id="v-pills-podcastfav"
                                         role="tabpanel" aria-labelledby="v-pills-podcastfav-tab">
                                        <!-- Podcast List 1 -->
                                        <div class="card" style="width: 100%;">
                                            <div class="card-horizontal">
                                                <div class="img-square-wrapper" style="width: 55%">
                                                    <img class="" src="http://via.placeholder.com/300x180"
                                                         alt="Card image cap"
                                                         style="width: 100%; height: 100%;">
                                                </div>
                                                <div class="card-body">
                                                    <h5>Podcast Name</h5>
                                                    <small><i class="fas fa-heart" style="color:red;"></i>
                                                        78 &nbsp; <i class="fas fa-comments"></i> 87 &nbsp;
                                                        <i class="fas fa-eye"></i>
                                                        100</small>
                                                    <hr>
                                                    <p class="card-text">Some quick example text to build on
                                                        the card
                                                        title and make up the bulk of the card's content. Yo
                                                        how it this
                                                        going good good no not good okay good</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-podcastlater" role="tabpanel"
                                         aria-labelledby="v-pills-podcastlater-tab">
                                        <!-- Podcast List 2 -->
                                        <div class="card" style="width: 100%;">
                                            <div class="card-horizontal">
                                                <div class="img-square-wrapper" style="width: 55%">
                                                    <img class="" src="http://via.placeholder.com/300x180"
                                                         alt="Card image cap"
                                                         style="width: 100%; height: 100%;">
                                                </div>
                                                <div class="card-body">
                                                    <h5>Podcast Name</h5>
                                                    <small><i class="fas fa-heart" style="color:red;"></i>
                                                        78 &nbsp; <i class="fas fa-comments"></i> 87 &nbsp;
                                                        <i class="fas fa-eye"></i>
                                                        100</small>
                                                    <hr>
                                                    <p class="card-text">Some quick example text to build on
                                                        the card
                                                        title and make up the bulk of the card's content. Yo
                                                        how it this
                                                        going good good no not good okay good</p>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="card" style="width: 100%;">
                                            <div class="card-horizontal">
                                                <div class="img-square-wrapper" style="width: 55%">
                                                    <img class="" src="http://via.placeholder.com/300x180"
                                                         alt="Card image cap"
                                                         style="width: 100%; height: 100%;">
                                                </div>
                                                <div class="card-body">
                                                    <h5>Podcast Name</h5>
                                                    <small><i class="fas fa-heart" style="color:red;"></i>
                                                        78 &nbsp; <i class="fas fa-comments"></i> 87 &nbsp;
                                                        <i class="fas fa-eye"></i>
                                                        100</small>
                                                    <hr>
                                                    <p class="card-text">Some quick example text to build on
                                                        the card
                                                        title and make up the bulk of the card's content. Yo
                                                        how it this
                                                        going good good no not good okay good</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Nav Tabs End -->

<%@ include file="footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>

    $(document).ready(function () {
        let username = '<%=session.getAttribute("username")%>';
        let userId = '<%=session.getAttribute("userId")%>';
        $.post("<%=GlobalVariable.localUrl%>/getMyProfileInfo", {username: username}, function (result) {
            console.log(result);
            if (result.profilePicLink != null) {
                document.getElementById("profilePicture").src = result.profilePicLink;
            }
            $("#profileFullName").html(result.fullName);
            $("#profileUsername").html("@" + result.userName);
            $("#profileBio").html(result.bio);
            $("#numberOfAwards").html("  " + result.numberOfAwards);
            $("#numberOfBadges").html("  " + result.numberOfBadges);
            $("#numberOfFollowers").html("  " + result.followers);
            $("#username").val(result.userName);
            $("#fullName").val(result.fullName);
            $("#email").val(result.email);
            $("#bio").val(result.bio);
            $("#phone").val(result.mobile);
            $("#location").val(result.location);
            $("#gender").val(result.gender);

            for (let i = 0; i < result.badge.length; i++) {
                let design = '<div class="col-md-6 col-lg-4 item">' +
                    '<div class="box"><img style="max-width: 140px;" class="img-thumbnail"' +
                    'src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">' +
                    '<h5 class="name">' + result.badge[i].badgeName + '</h5>' +
                    '<small>Points needed to Earn: ' + result.badge[i].minLikesToEarn + '</small>' +
                    '</div>' +
                    '</div>';
                document.getElementById('mybadges-row').innerHTML += design;
            }
            for (let i = 0; i < result.award.length; i++) {
                let design = '<div class="col-md-6 col-lg-4 item">' +
                    '<div class="box"><img style="max-width: 140px;" class="img-thumbnail"' +
                    'src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">' +
                    '<h5 class="name">' + result.award[i].competition.competitionName + '</h5>' +
                    '<small>' + result.award[i].rankName + '</small>' +
                    '</div>' +
                    '</div>';
                document.getElementById('myawards-row').innerHTML += design;
            }

        });
        $.post("<%=GlobalVariable.localUrl%>/getMyBooksInfo", {username: username}, function (data) {
            console.log(data);

            for (let i = 0; i < data.length; i++) {
                let design = '<div id="' + data[i].id + '" onclick="bookDetails(this)" class="card">' +
                    '<img class="card-img-top" src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar">' +
                    '<div class="container"' +
                    'style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">' +
                    '<h4><b>' + data[i].bookName + '</b></h4>' +
                    '<p><small><i class="fas fa-heart" style="color:red;"></i> ' + data[i].numberOfLikes + ' &nbsp; <i ' +
                    'class="fas fa-comments"></i>  ' + data[i].numberOfComments + ' &nbsp; <i class="fas fa-eye"></i>  ' +
                    data[i].totalViews + '</small> </p>' +
                    ' <hr>' +
                    '<p>' + data[i].description + '</p>' +
                    ' </div>' +
                    '</div>';
                document.getElementById('mybooks-row').innerHTML += design;
            }

        });
        $.post("<%=GlobalVariable.localUrl%>/getMyPodcastsInfo", {username: username}, function (data) {
            console.log(data);

            for (let i = 0; i < data.length; i++) {
                let design = '<div class="card" style="width: 100%;">' +
                    '<div class="card-horizontal">' +
                    '<div class="img-square-wrapper">' +
                    '<img class="" src="http://via.placeholder.com/300x180"' +
                    'alt = "Card image cap" style="width: 100%; height: 100%;">' +
                    ' </div>' +
                    '<div class="card-body">' +
                    '<h4>' + data[i].seriesName + '</h4>' +
                    '<small><i class="fas fa-heart" style="color:red;"></i>' + data[i].numberOfLikes + '&nbsp; ' +
                    '<i class="fas fa-comments"></i>' + data[i].numberOfComments + '&nbsp; ' +
                    '<i class="fas fa-eye"></i>' + data[i].totalViews + '</small>' +
                    '<hr>' +
                    '<p class="card-text">Some quick example text to build on the card' +
                    'title and make up the bulk of the cards content. Yo how is this' +
                    'going good good no not good okay good</p>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<br>';
                document.getElementById('mypodcasts-col').innerHTML += design;
            }
        });
        $.post("<%=GlobalVariable.localUrl%>/getMyFollowersInfo", {userId: userId}, function (data) {
            console.log(data);
            if (data.length === 0) {
                document.getElementById('myfollowers-list').innerHTML = '<p> No Followers To Show </p>';
            } else {
                for (let i = 0; i < data.length; i++) {
                    let design = '<div class="list-group-item d-flex align-items-center" >' +
                        '<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" width="50px"' +
                        'class="rounded-sm ml-n2"/>' +
                        '<div class="flex-fill pl-3 pr-3">' +
                        '<div><a href="#" class="text-dark font-weight-600">' + data[i].userName + '</a></div>' +
                        '<div class="text-muted fs-13px"><small><i class="fas fa-users"></i>' + data[i].followers + '&nbsp;' +
                        '<i class="fas fa-book-open"></i>' + data[i].numberOfBooks + '&nbsp; ' +
                        '<i class="fas fa-podcast"></i> ' + data[i].numberOfPodcasts + '</small></div>' +
                        '</div>' +
                        '<a href="#" class="btn btn-outline-primary">Follow Back</a>' +
                        '</div>';
                    document.getElementById('myfollowers-list').innerHTML += design;
                }
            }
        });
        $.post("<%=GlobalVariable.localUrl%>/getMyFollowingsInfo", {userId: userId}, function (data) {
            console.log(data);
            if (data.length === 0) {
                document.getElementById('myfollowings-list').innerHTML = '<p> You Have Not Followed Anyone Yet </p>';
            } else {
                for (let i = 0; i < data.length; i++) {
                    let design = '<div class="list-group-item d-flex align-items-center" >' +
                        '<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" width="50px"' +
                        'class="rounded-sm ml-n2"/>' +
                        '<div class="flex-fill pl-3 pr-3">' +
                        '<div><a href="#" class="text-dark font-weight-600">' + data[i].userName + '</a></div>' +
                        '<div class="text-muted fs-13px"><small><i class="fas fa-users"></i>' + data[i].followers + '&nbsp;' +
                        '<i class="fas fa-book-open"></i>' + data[i].numberOfBooks + '&nbsp; ' +
                        '<i class="fas fa-podcast"></i> ' + data[i].numberOfPodcasts + '</small></div>' +
                        '</div>' +
                        '<a href="#" class="btn btn-outline-primary">Unfollow</a>' +
                        '</div>';
                    document.getElementById('myfollowings-list').innerHTML += design;
                }
            }
        });
        $.post("<%=GlobalVariable.localUrl%>/getMySubscribersInfo", {userId: userId}, function (data) {
            console.log(data);
            if (data.length === 0) {
                document.getElementById('mysubscribers-list').innerHTML = '<p> No Subscribers To Show </p>';
            } else {
                for (let i = 0; i < data.length; i++) {
                    let design = '<div class="list-group-item d-flex align-items-center" >' +
                        '<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" width="50px"' +
                        'class="rounded-sm ml-n2"/>' +
                        '<div class="flex-fill pl-3 pr-3">' +
                        '<div><a href="#" class="text-dark font-weight-600">' + data[i].userName + '</a></div>' +
                        '<div class="text-muted fs-13px"><small><i class="fas fa-users"></i>' + data[i].followers + '&nbsp;' +
                        '<i class="fas fa-book-open"></i>' + data[i].numberOfBooks + '&nbsp; ' +
                        '<i class="fas fa-podcast"></i> ' + data[i].numberOfPodcasts + '</small></div>' +
                        '</div>' +
                        '<a href="#" class="btn btn-outline-primary">Subscribe</a>' +
                        '</div>';
                    document.getElementById('mysubscribers-list').innerHTML += design;
                }
            }
        });
    });

    function bookDetails(element) {
        location.href = "<%=GlobalVariable.localUrl%>/bookDetailsUser?id=" + element.id;
    }

    document.addEventListener("DOMContentLoaded", function () {
        var mediaElements = document.querySelectorAll("video, audio"),
            total = mediaElements.length;

        for (var i = 0; i < total; i++) {
            new MediaElementPlayer(mediaElements[i], {
                pluginPath:
                    "https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/",
                shimScriptAccess: "always",
                success: function () {
                    var target = document.body.querySelectorAll(".player"),
                        targetTotal = target.length;
                    for (var j = 0; j < targetTotal; j++) {
                        target[j].style.visibility = "visible";
                    }
                },
            });
        }
    });

    function tabChange() {
        var tabs = $(".nav-tabs > li");
        var active = tabs.filter(".active");
        var next = active.next("li").length
            ? active.next("li").find("a")
            : tabs.filter(":first-child").find("a");
        next.tab("show");

        $(".tab-pane").hover(
            function () {
                clearInterval(tabCycle);
            },
            function () {
                // tabCycle = setInterval(tabChange, 5000);
            }
        );
    }
</script>
</body>

</html>