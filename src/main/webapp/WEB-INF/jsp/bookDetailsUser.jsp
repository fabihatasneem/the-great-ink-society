<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 10/22/2021
  Time: 3:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/reading/main.css">

<%--CSS Start--%>
<style>
    .extra{
        background-color: aliceblue;
        box-shadow: 0 0 10px 2px #ddd;
        margin-bottom: 10px;
        padding: 15px;
    }
    .extra p{
        font-size: large;
        font-weight: bold;
    }
    .extra2{
        background-color: aliceblue;
        box-shadow: 0 0 10px 2px #ddd;
        margin-bottom: 10px;
        padding: 15px;
    }
    .extra2 li {
        background-color: aliceblue;
    }
    .extra2 a{
        cursor: pointer;
        border-bottom: 1px solid lightgrey;
    }
    .extra2 a:hover{
        border-bottom-color:gray;
    }
    .extra2 ul a {
        font-size: 20px;
        font-weight: 500;
    }
    .extra2 p {
        font-size: small;
        color: gray;
    }
</style>
<!-- CSS END -->

<br><br>
<section class="post-content-area single-post-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="container-fluid">
                    <div class="text-center">
                        <img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;"  src="img/blog/feature-img1.jpg">
                        <h2 style="padding: 15px 0;">${bookName}</h2>
                    </div>
                    <div class="container extra">
                        <div class="row">
                            <div class="col-lg-7">
                                <p><i class="fas fa-book-open"></i> Number of Chapters Published: ${numberOfChapters}</p>
                                <p><i class="fas fa-language"></i> Language: ${language}</p>
                                <p><i class="fas fa-theater-masks"></i> Genre: ${genre}</p>
                                <p><i class="fas fa-clock"></i> Last Updated ${lastUpdated}</p>
                            </div>
                            <div class="col-lg-5">
                                <p><i class="fas fa-eye"></i> Total Views ${totalViews}</p>
                                <p><i style="color: red;" class="fas fa-heart"></i> Total Reacts ${totalReacts}</p>
                                <p><i class="fas fa-comments"></i> Total Comments ${totalComments}</p>
                                <p> <i style="color: #daa520" class="fas fa-trophy"></i> Awards Won ${totalAwards}</p>
                            </div>
                            <br><br>
                            <form method="POST" action="<%=GlobalVariable.localUrl%>/bookEdit">
                                <div class="form-group mt-20">
                                    <label style="font-weight: bold;" for="description">Description</label>
                                    <textarea name="description" id="description" class="form-control" placeholder="Description">${description}</textarea>
                                    <input type="hidden" name="bookId" value="${bookId}">
                                </div>
                                <div style="justify-content: flex-end;" class="form-row">
                                    <button type="submit" class="btn btn-primary">Save Changes</button>&nbsp;
                                </div>
                            </form>
                        </div>
                    </div>
                    <h3 style="margin: 20px 0;">
                        Chapters
                    </h3>
                    <div class="container extra2">
                        <ul id="chapterList" class="list-group list-group-flush">

                        </ul>
                    </div>
                    <div id="buttons" class="text-right">

                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-wrap">
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">My Drafts</h4>
                        <div id="myDraftBooks" class="popular-post-list">
                        </div>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">Most Popular</h4>
                        <div id="myMostPopular" class="popular-post-list">

                        </div>
                        <span> <a style="margin-left: 70%;" href=""> View More </a> </span>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">Most Viewed</h4>
                        <div id="myMostViewed" class="popular-post-list">

                        </div>
                        <span> <a style="margin-left: 70%;" href=""> View More </a> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End post-content Area -->
<%@ include file="footer.jsp" %>

<script>
    $(document).ready(function () {
        let bookId = ${bookId};
        let completionStatus = ${completionStatus};
        let publishStatus = ${publishStatus};
        console.log(completionStatus);

        $.post("<%=GlobalVariable.localUrl%>/getChaptersofBook", {bookId: bookId}, function (result) {
           console.log(result);
            let design = '';
            let draftName = '';
            let urlLink = '';
           result.map(chapter => {
               draftName = '';
               if (chapter.status === 0) {
                   draftName = ' <small style="color: red;">(Draft)</small> ';
                   urlLink = '<%=GlobalVariable.localUrl%>/chapterWrite?chapterId=' + chapter.id;
               } else {
                   urlLink = '<%=GlobalVariable.localUrl%>/reading?id=' + chapter.id;
               }

               design += '<a href="' + urlLink + '"><li class="list-group-item">' + draftName + chapter.chapterName +
               '<small><p><i style="color: red;" class="fas fa-heart"></i> ' + chapter.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + chapter.numberOfComments + ' &nbsp; <i class="fas fa-eye"></i> ' + chapter.totalViews + '</p></small>' +
               '</li></a>';

           });

           document.getElementById('chapterList').innerHTML = design;
           let buttonsDesign = '';
           if (completionStatus === 0) {
               if (publishStatus == 1) {
                   buttonsDesign = '<button onclick="completeBook(${bookId})" class="btn btn-warning">Make Completed <i class="fas fa-check-circle"></i></button> ' +
                       '<button class="btn btn-primary"><a style="color: white" href="<%=GlobalVariable.localUrl%>/chapterWrite?chapterNo=${nextChapterNo}"> Add a New Chapter </a></button>';
               } else {
                   buttonsDesign = '<button onclick="publishBook(${bookId})" class="btn btn-info">Publish Book <i class="fas fa-check-circle"></i></button> ' +
                       '<button class="btn btn-primary"><a style="color: white" href="<%=GlobalVariable.localUrl%>/chapterWrite?chapterNo=${nextChapterNo}"> Add a New Chapter </a></button>'
               }

           } else {
               buttonsDesign = '<button class="btn btn-success">Completed <i class="fas fa-check-circle"></i></button>';
           }

           document.getElementById('buttons').innerHTML = buttonsDesign;
        });


        $.post("<%=GlobalVariable.localUrl%>/getMyDraftBooks", {userId: ${userId}}, function (result) {
            console.log(result);

            let draftBookDesign = '';

            result.map( book => {
                draftBookDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +
                    ' <div class="thumb">' +
                    '<img class="img-fluid" src="img/blog/pp1.jpg" alt="">' +
                    '</div>' +
                    '<div class="details">' +
                    '<a href="blog-single.html">' +
                    '<h6>' + book.bookName + '</h6>' +
                    '</a>' +
                    ' </div>' +
                    '</div>';
            });

            document.getElementById('myDraftBooks').innerHTML = draftBookDesign;
        });

        $.post("<%=GlobalVariable.localUrl%>/getMyMostPopularBooks", {userId: ${userId}}, function (result) {
            console.log(result);

            let mostPopularBookDesign = '';

            result.map( book => {
                mostPopularBookDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +
                    ' <div class="thumb">' +
                    '<img class="img-fluid" src="img/blog/pp1.jpg" alt="">' +
                    '</div>' +
                    '<div class="details">' +
                    '<a href="blog-single.html">' +
                    '<h6>' + book.bookName + '</h6>' +
                    '</a>' +
                    '<p><i class="fas fa-heart" style="color:red;"></i> ' + book.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + book.numberOfComments + '</p>' +
                    ' </div>' +
                    '</div>';
            });

            document.getElementById('myMostPopular').innerHTML = mostPopularBookDesign;
        });

        <%--$.post("<%=GlobalVariable.localUrl%>/getMyMostViewedBooks", {userId: ${userId}}, function (result) {--%>
        <%--    console.log(result);--%>

        <%--    let mostViewedBookDesign = '';--%>

        <%--    result.map( book => {--%>
        <%--        mostViewedBookDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +--%>
        <%--            ' <div class="thumb">' +--%>
        <%--            '<img class="img-fluid" src="img/blog/pp1.jpg" alt="">' +--%>
        <%--            '</div>' +--%>
        <%--            '<div class="details">' +--%>
        <%--            '<a href="blog-single.html">' +--%>
        <%--            '<h6>' + book.bookName + '</h6>' +--%>
        <%--            '</a>' +--%>
        <%--            '<p><i class="fas fa-heart" style="color:red;"></i> ' + book.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + book.numberOfComments + ' &nbsp; <i class="fas fa-eye"></i> ' + book.totalViews + ' </p>' +--%>
        <%--            ' </div>' +--%>
        <%--            '</div>';--%>
        <%--    });--%>

        <%--    document.getElementById('myMostViewed').innerHTML = mostViewedBookDesign;--%>
        <%--});--%>


    });

    function completeBook(bookId) {
        $.post("<%=GlobalVariable.localUrl%>/makeBookCompleted", {bookId: bookId}, function (result){
            console.log(result);
            let buttonsDesign = '';
            if (result) {
                buttonsDesign = '<button class="btn btn-success">Completed <i class="fas fa-check-circle"></i></button>';

                document.getElementById('buttons').innerHTML = buttonsDesign;
            }
        });
    }

    function publishBook(bookId) {
        $.post("<%=GlobalVariable.localUrl%>/makeBookPublished", {bookId: bookId}, function (result){
            console.log(result);
            let buttonsDesign = '';
            if (result) {
                buttonsDesign = buttonsDesign = '<button onclick="completeBook(${bookId})" class="btn btn-warning">Make Completed <i class="fas fa-check-circle"></i></button> ' +
                    '<button class="btn btn-primary"><a style="color: white" href="<%=GlobalVariable.localUrl%>/chapterWrite?chapterNo=${nextChapterNo}"> Add a New Chapter </a></button>';

                document.getElementById('buttons').innerHTML = buttonsDesign;
            }
        });
    }
</script>

</body>
</html>


