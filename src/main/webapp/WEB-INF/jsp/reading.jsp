<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 4:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>


<link rel="stylesheet" href="css/reading/main.css">

<style>
  /* Can Not Select */
  .unselectable {
    -webkit-user-select: none;
    -webkit-touch-callout: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  .fa-heart-o {
    color: red;
    cursor: pointer;
  }

  .fa-heart {
    color: red;
    cursor: pointer;
  }
</style>
<!-- CSS END -->

<!-- start banner Area -->
<section class="banner-area relative" id="home"  style="background-image: url('https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwriting-index.jpg?alt=media&token=899830a5-7209-4247-844e-2859822722b2')">
    <div class="overlay overlay-bg"  style="opacity: 40%"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <a href="<%=GlobalVariable.localUrl%>/bookDetailsUser?id=${bookId}">
                    <h1 class="text-white">
                        ${bookName}
                    </h1>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->



<!-- Start post-content Area -->
<section class="post-content-area single-post-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;"
                                 src="${bookCoverPhotoLink}">
                        </div>
                    </div>
                    <h3 class="mt-20 mb-10"> ${chapterName} </h3>
                    <a class="mb-10" href="#">${genre}</a>
                    <div class="user-details row">
                        <div class="col-lg-12">
                            <i class="fas fa-calendar-alt"></i> ${creationDate} &nbsp; &nbsp; &nbsp;
                            <i id="totalReacts" class="fas fa-heart"> ${totalReacts} </i>  &nbsp; &nbsp; &nbsp;
                            <i class="fas fa-eye"></i> ${totalViews} Views &nbsp; &nbsp; &nbsp;
                            <i class="fas fa-comments"></i> ${totalComments} Comments
                        </div>
                    </div>
                    <hr style="margin-top: 10px;">
                    <div class="col-lg-12 unselectable">
                        <div class="row mt-10 mb-30">
                            <div class="col-lg-12 mt-10">
                                ${paragraph}

                            </div>
                            <hr>
                            <div name="heart" id="heart" class="text-left">
                                <i style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true"></i>
                            </div>
                            <div id="reportORunpublishButton" class="text-right">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="navigation-area">
                    <div class="row">
                        <div
                                class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                            <div class="detials">
                                <p> <a href="#"><i class="fas fa-chevron-circle-left"></i> Previous Chapter </a> </p>
                                <a href="#">
                                    <h4>0. Chapter Name</h4>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                            <div class="detials">
                                <p><a href="#"> Next Chapter  <i class="fas fa-chevron-circle-right"></i></a></p>
                                <a href="#">
                                    <h4>02. Chapter Name </h4>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="comments" class="comments-area">
                    <h4 id="numberOfComments"></h4>
                </div>
                <div class="comment-form">
                    <h4>Leave a Comment</h4>
                    <form action="<%=GlobalVariable.localUrl%>/submitCommentOfChapter" method="POST">
                        <div class="form-group">
								<textarea class="form-control mb-10" rows="5" name="commentDesc"
                                          placeholder="Your Comment..." onfocus="this.placeholder = ''"
                                          onblur="this.placeholder = 'Your Comment...'" required=""></textarea>
                            <input type="hidden" name="chapterId" value="${chapterId}">
                            <input type="hidden" name="bookId" value="${bookId}">
                        </div>
                        <button type="submit" class="primary-btn text-uppercase">Post Comment</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-wrap">
                    <div class="single-sidebar-widget user-info-widget">
                        <img width="250" height="250" src="${userProfileLink}" alt="">
                        <a href="<%=GlobalVariable.localUrl%>/getProfile?id=${userId}">
                            <h4>${userFullName}</h4>
                        </a>
                        <p>
                            <i class="fas fa-user-friends"></i> ${userFollowers} &nbsp; <i class="fas fa-award"></i> ${numberOfBadges} &nbsp; <i
                                style="color: #DAA520;" class="fas fa-trophy"></i> ${numberOfAwards} &nbsp; <i class="fas fa-heart"
                                                                                               style="color:red;"></i> ${numberOfReacts}
                        </p>
                        <p>
                            ${userBio}
                        </p>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">Popular From This Author</h4>
                        <div id="sameAuthorBooks" class="popular-post-list">

                        </div>
                        <span> <a style="margin-left: 70%;" href=""> View More </a> </span>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">More From This Genre</h4>
                        <div id="sameGenreBooks" class="popular-post-list">


                        </div>
                        <span> <a style="margin-left: 70%;" href=""> View More </a> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End post-content Area -->

<!-- start footer Area -->
<%@ include file="footer.jsp" %>
<!-- End footer Area -->
<script>
    let totalReacts = ${totalReacts};
    let readerId = '<%=session.getAttribute("userId")%>';
    $(document).ready(function () {

        let chapterLiked = ${chapterLiked};

        console.log('is Liked', chapterLiked);

        if (chapterLiked === 1) {
            $("#heart").html('<i style="font-size: 25px;" class="fa fa-heart" aria-hidden="true"></i>');
            $("#heart").addClass("liked");
        } else {
            $("#heart").html('<i style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true"></i>');
            $("#heart").removeClass("liked");
        }

        let isWriter = ${isWriter};
        let buttonsDesign = '';
        console.log(isWriter);
        if (isWriter === 1) {
            buttonsDesign = '<button onclick="unpublishChapter(${chapterId})" class="btn btn-outline-warning"><i class="fas fa-trash-alt"></i> Unpublish</button>';
        } else {
            buttonsDesign = '<button class="btn btn-outline-warning"><i class="fas fa-flag"></i> Report</button>';
        }

        document.getElementById('reportORunpublishButton').innerHTML = buttonsDesign;

        $.post("<%=GlobalVariable.localUrl%>/getCommentsOfChapter", {chapterId: ${chapterId}, bookId: ${bookId}}, function(result) {
            console.log(result);
            let design = '';
            result.map(comment => {

                design += '<div class="comment-list"> ' +
                    '<div class="single-comment justify-content-between d-flex">' +
                    '<div class="user justify-content-between d-flex">' +
                    '<div class="thumb">' +
                    '<img width="60" height="60" src="' + comment.user.profilePicLink + '" alt="">' +
                    '</div>' +
                    '<div class="desc">' +
                    '<h5><a href="#">' + comment.user.fullName + '</a></h5>' +
                    '<p class="date">' + moment(comment.commentDate).format('MMMM Do YYYY, h:mm:ss a') + '</p>' +
                    '<p class="comment">' + comment.commentDescription + '</p>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>';
            });
            document.getElementById('numberOfComments').innerHTML = result.length + ' Comments';
            document.getElementById('comments').innerHTML += design;
        });

        $.post("<%=GlobalVariable.localUrl%>/getSameGenreBooks", {genreId: ${genreId}}, function (result) {
            console.log(result);

            let genreBookDesign = '';

            result.map( book => {
                genreBookDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +
                    ' <div class="thumb">' +
                    '<img style="width: 100px; height: 100px;" src="' + book.coverPhotoLink + '" alt="">' +
                    '</div>' +
                    '<div class="details">' +
                    '<a href="<%=GlobalVariable.localUrl%>/bookDetailsUser?id=' + book.id + '">' +
                    '<h6>' + book.bookName + '</h6>' +
                    '</a>' +
                    '<p><i class="fas fa-heart" style="color:red;"></i> ' + book.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + book.numberOfComments + '</p>' +
                    ' </div>' +
                    '</div>';
            });

            document.getElementById('sameGenreBooks').innerHTML = genreBookDesign;
        });

        $.post("<%=GlobalVariable.localUrl%>/getSameAuthorBooks", {userId: ${userId}}, function (result) {
            console.log(result);

            let genreBookDesign = '';

            result.map( book => {
                genreBookDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +
                    ' <div class="thumb">' +
                    '<img style="width: 100px; height: 100px;" src="' + book.coverPhotoLink + '" alt="">' +
                    '</div>' +
                    '<div class="details">' +
                    '<a href="<%=GlobalVariable.localUrl%>/bookDetailsUser?id=' + book.id + '">' +
                    '<h6>' + book.bookName + '</h6>' +
                    '</a>' +
                    '<p><i class="fas fa-heart" style="color:red;"></i> ' + book.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + book.numberOfComments + '</p>' +
                    ' </div>' +
                    '</div>';
            });

            document.getElementById('sameAuthorBooks').innerHTML = genreBookDesign;
        });
    });

    function unpublishChapter(chapterId){
        $.post("<%=GlobalVariable.localUrl%>/unpublishChapter", {chapterId: chapterId}, function (result){
            console.log(result);
            if (result) {
                location.href = "<%=GlobalVariable.localUrl%>/bookDetailsUser?id=" + ${bookId};
            }
        });
    }

    $("#heart").click(function () {
        $.post("<%=GlobalVariable.localUrl%>/chapterLike", {userId: readerId, chapterId: ${chapterId}}, function (result) {
            console.log(result);
            if (result === true) {
                if ($("#heart").hasClass("liked")) {
                    $("#heart").html('<i style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true"></i>');
                    $("#heart").removeClass("liked");

                    totalReacts = totalReacts + 1;
                    console.log(totalReacts);
                    document.getElementById("totalReacts").innerHTML = totalReacts;
                } else {
                    $("#heart").html('<i style="font-size: 25px;" class="fa fa-heart" aria-hidden="true"></i>');
                    $("#heart").addClass("liked");
                }
            } else {
                alert('You already liked this chapter');
            }
        });

    });
</script>

</body>

</html>
