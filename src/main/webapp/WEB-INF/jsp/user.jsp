<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/profile/style.css"/>
<link rel="stylesheet" href="css/reading/main.css"/>

<style>
    .cycle-tab-container {
        margin: 0px;
        padding: 20px;
        background-color: lavenderblush;
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

    .card-horizontal {
        display: flex;
        flex: 1 1 auto;
    }
</style>

<!-- CSS END -->


<!-- start banner Area -->
<section class="banner-area relative" id="personal2">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12" style="margin-top: 60px">
                <img src="img/blog/user-info.png" class="img-circle img-profile img-thumbnail lazy"
                     alt="User profile" style="border-radius: 50%; width: 150px; height: 150px"/>
                <p>
                <h3 style="color: white;">${userFullName}</h3>
                <h6 style="color: rgb(196, 190, 190);">@${username}</h6>
                </p>
                <p>
                    <i style="color: #daa520" class="fas fa-trophy" id="numberOfAwards"></i> &nbsp; ${numberOfAwards}
                    &nbsp;
                    <i style="color: #abf6ff" class="fas fa-award" id="numberOfBadges"></i> &nbsp; ${numberOfBadges}
                    &nbsp;
                    <i style="color: #ffabab" class="fas fa-users" id="numberOfFollowers"></i>
                    &nbsp; ${numberOfFollowers}
                </p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->


<br/>
<!-- Nav tabs -->
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="widget-wrap">
                <div class="single-sidebar-widget popular-post-widget" align="center">
                    <button type="button" class="btn btn-outlined--black" style="color:white; background-color: limegreen" id="followBigBtn"
                            onclick="followOrUnfollow(${userId})">Follow
                    </button><br>
                    <br>
                    <p style="text-align: center;"> ${userBio}</p>
                </div>
                <div class="single-sidebar-widget popular-post-widget">
                    <h4 style="margin-bottom: 15px" class="popular-title">
                        <i class="fa fa-star"></i> Earned Badges
                    </h4>
                    <div id="earnedBadgesDesign">
                        ${earnedBadgesDesign}
                    </div>
                </div>
                <div class="single-sidebar-widget popular-post-widget">
                    <h4 class="popular-title">
                        <i class="fa fa-trophy"></i> Achievements
                    </h4>
                    <div id="achievementDesign">
                        ${achievementDesign}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="cycle-tab-container">
                <ul class="nav nav-tabs">
                    <li class="cycle-tab-item active">
                        <a class="nav-link" role="tab" data-toggle="tab" href="#personal">Personal Info</a>
                    </li>
                    <li class="cycle-tab-item">
                        <a class="nav-link" role="tab" data-toggle="tab" href="#publishedbooks">Published Books</a>
                    </li>
                    <li class="cycle-tab-item">
                        <a class="nav-link" role="tab" data-toggle="tab" href="#publishedpodcasts">Published
                            Podcasts</a>
                    </li>
                    <li class="cycle-tab-item">
                        <a class="nav-link" role="tab" data-toggle="tab"
                           href="#followers">Followers(${numberOfFollowers})</a>
                    </li>
                    <li class="cycle-tab-item">
                        <a class="nav-link" role="tab" data-toggle="tab" href="#saved">Saved Lists</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade active in" id="personal" role="tabpanel"
                         aria-labelledby="personal-tab">
                        <!-- Personal Tag -->
                        <div class="row">
                            <div class="col-md-7">
                                <p>
                                    Full Name: ${userFullName}
                                </p>
                                <p>
                                    Location: ${location}
                                </p>
                                <p>
                                    Followers: ${numberOfFollowers}
                                </p>
                                <p>
                                    Following: ${numberOfFollowings}
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p>
                                    Awards Won: ${numberOfAwards}
                                </p>
                                <p>
                                    Competitions Participated In: ${competitionCount}
                                </p>
                                <p>
                                    Badges Earned: ${numberOfBadges}
                                </p>
                                <p>
                                    Current Badge: ${currentBadge}
                                </p>
                            </div>
                            <hr style="width:max-content;">
                            <span><button style="font-size: 11px;" type="button" class="btn btn-outline-warning"> <i
                                    class="fas fa-flag"></i> Report This Profile</button></span>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="publishedbooks" role="tabpanel"
                         aria-labelledby="publishedbooks-tab">
                        <!-- Published Books tag -->
                        <div class="row" style="margin-left: 1px; column-gap: 6.5%; row-gap: 15px;"
                             id="userPublishedBooks">


                        </div>
                    </div>
                    <div class="tab-pane fade" id="publishedpodcasts" role="tabpanel"
                         aria-labelledby="publishedpodcasts-tab">
                        <!-- Published Podcasts tag -->
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-12 mt-3" id="userPublishedPodcasts">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="followers" role="tabpanel" aria-labelledby="followers-tab">
                        <!-- Followers Tag -->
                        <div class="list-group" id="userFollowerSection">

                        </div>
                    </div>
                    <div class="tab-pane fade" id="saved" role="tabpanel" aria-labelledby="saved-tab">
                        <!-- Saved Tag -->
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
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist"
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
                                        <div class="tab-content" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-bookfavs"
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
                                                             alt="Avatar" style="width:100%; max-height: 42% ">
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
                                                            <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum fdshk
                                                                jbkfds njkdsLorem Ipsum a a a a a a a a a
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
                                                            <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem
                                                                Ipsum a a a a a a a a a
                                                                .....</p>
                                                        </div>
                                                    </div>
                                                    <div class="card">
                                                        <img class="card-img-top"
                                                             src="https://www.w3schools.com/howto/img_avatar2.png"
                                                             alt="Avatar" style="width:100%; max-height: 42% ">
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
                                                            <p>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum fdshk
                                                                jbkfds njkdsLorem Ipsum a a a a a a a a a
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
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist"
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
                                        <div class="tab-content" id="v-pills-tabContent">
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
    </div>
</div>

<%@ include file="footer.jsp" %>

<script>
    $(document).ready(function () {
        let username = '${username}';
        let userId = '${userId}';
        $.post("<%=GlobalVariable.localUrl%>/getSameAuthorBooks", {userId: userId}, function (result) {
            console.log(result);
            for (var i = 0; i < result.length; i++) {
                let design = '<div class="card">' +
                    '<img class="card-img-top" src="images/' + result[i].coverPhotoName + '" alt="Avatar">' +
                    '<div class="container" style="padding-top: 8px; padding-right: 5px; padding-left: 5px;">' +
                    '<h4><b>' + result[i].bookName + '</b></h4>' +
                    '<p><small><i class="fas fa-heart" style="color:red;"></i> ' + result[i].numberOfLikes + ' &nbsp; ' +
                    '<i class="fas fa-comments"></i> ' + result[i].numberOfComments + ' &nbsp; <i class="fas fa-eye"></i>' + result[i].totalViews + '</small></p>' +
                    '<hr>' +
                    '<p>' + result[i].description + '</p>' +
                    '</div>' +
                    '</div>';
                document.getElementById('userPublishedBooks').innerHTML += design;
            }
        });
        $.post("<%=GlobalVariable.localUrl%>/getSameUploaderPodcasts", {userId: userId}, function (result) {
            console.log(result);
            for (var i = 0; i < result.length; i++) {
                let design = '<div class="card" style="width: 100%;">' +
                    '<div class="card-horizontal">' +
                    '<div class="img-square-wrapper" style="width: 55%">' +
                    '<img class="" src="images/' + result[i].coverPhotoName + '" alt="Card image cap" style="width: 100%; height: 100%;">' +
                    '</div>' +
                    '<div class="card-body">' +
                    '<h4>' + result[i].seriesName + '</h4>' +
                    '<small><i class="fas fa-heart" style="color:red;"></i> ' + result[i].numberOfLikes + ' &nbsp;' +
                    '<i class="fas fa-comments"></i> ' + result[i].numberOfComments + ' &nbsp;' +
                    '<i class="fas fa-eye"></i> ' + result[i].totalViews + '</small>' +
                    '<hr>' +
                    '<p class="card-text">' + result[i].description + ' </p>' +
                    '<div class="player">' +
                    '<audio id="player2" preload="none" controls style="max-width: 100%">' +
                    '<source src="http://www.largesound.com/ashborytour/sound/brobob.mp3" type="audio/mp3" />' +
                    '</audio>' +
                    '</div> ' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<br>';
                document.getElementById('userPublishedPodcasts').innerHTML += design;
            }
        });
        $.post("<%=GlobalVariable.localUrl%>/getMyFollowersInfo", {userId: userId}, function (result) {
            console.log(result);
            for (var i = 0; i < result.length; i++) {
                let userProfileUrl = '<%=GlobalVariable.localUrl%>/getProfile?id=' + result[i].id;
                let imageName;
                if (result[i].profilePicName != null) {
                    imageName = result[i].profilePicName;
                } else {
                    if (result[i].gender == 'Male') {
                        imageName = 'male_dp.jpg';
                    } else {
                        imageName = 'female_dp.jpg';
                    }
                }
                let design = '<div class="list-group-item d-flex align-items-center">' +
                    '<img src="images/' + imageName + '" alt="" width="50px" class="rounded-sm ml-n2"/>' +
                    '<div class="flex-fill pl-3 pr-3">' +
                    '<div><a href="' + userProfileUrl + '" class="text-dark font-weight-600">' + result[i].fullName + '</a></div>' +
                    '<div class="text-muted fs-13px"><small><i class="fas fa-users"></i> ' + result[i].followers + ' &nbsp;' +
                    '<i class="fas fa-book-open"></i> ' + result[i].numberOfBooks + ' &nbsp; ' +
                    '<i class="fas fa-podcast"></i> ' + result[i].numberOfPodcasts + '</small></div>' +
                    '</div>' +
                    '<button onclick="followOrUnfollow(' + result[i].id + ')" class="btn btn-outlined--black" style="color:white; background-color: limegreen" id="followSmallBtn_' + result[i].id + '">Follow</button>' +
                    '</div>';
                document.getElementById('userFollowerSection').innerHTML += design;
            }
        });
    });

    function followOrUnfollow(followingId) {
        let followerId = '<%=session.getAttribute("userId")%>';
        let profileId = '${userId}';
        let btn;
        if(followingId != profileId){
            btn = document.getElementById('followSmallBtn_' + followingId);
        } else{
            btn = document.getElementById('followBigBtn');
        }
        $.post("<%=GlobalVariable.localUrl%>/followUnfollowUser", {
            followerId: followerId,
            followingId: followingId
        }, function (result) {
            if (result.status == 1) {
                btn.textContent = "Unfollow";
                btn.style.backgroundColor = 'orangered';
                btn.style.color = 'white';
            } else {
                btn.textContent = "Follow";
                btn.style.backgroundColor = 'limegreen';
                btn.style.color = 'white';
            }
        });
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