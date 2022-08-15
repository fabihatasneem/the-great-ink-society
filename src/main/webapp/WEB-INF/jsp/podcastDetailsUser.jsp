<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 10/22/2021
  Time: 3:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/reading/main.css">

<%--CSS START--%>
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

<!-- Start post-content Area -->
<br><br>
<section class="post-content-area single-post-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="container-fluid">
                    <div class="text-center">
                        <img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;"  src="${podcastCoverLink}">
                        <h2 style="padding: 15px 0;">${podcastName}</h2>
                    </div>
                    <div class="container extra">
                        <div class="row">
                            <div class="col-lg-7">
                                <p><i class="fas fa-book-open"></i> Number of Episodes Published: ${numberOfEpisodes}</p>
                                <p><i class="fas fa-language"></i> Language: ${language}</p>
                                <p><i class="fas fa-theater-masks"></i> Genre: ${genre}</p>
                            </div>
                            <div class="col-lg-5">
                                <p><i class="fas fa-eye"></i> Total Views ${totalViews}</p>
                                <p><i style="color: red;" class="fas fa-heart"></i> Total Reacts ${totalReacts}</p>
                                <p><i class="fas fa-comments"></i> Total Comments ${totalComments}</p>
                                <p> <i style="color: #daa520" class="fas fa-trophy"></i> Awards Won ${totalAwards}</p>
                            </div>
                            <br><br>
                            <form>
                                <div class="form-group mt-20">
                                    <textarea name="description" id="description" class="form-control" placeholder="Description">${description}</textarea>
                                    <input type="hidden" name="podcastIdId" value="${podcastId}">
                                </div>
                                <div style="justify-content: flex-end;" class="form-row">
                                    <button type="submit" class="btn btn-primary">Save Changes</button>&nbsp;
                                </div>
                            </form>
                        </div>
                    </div>
                    <h3 style="margin: 20px 0;">
                        Episodes
                    </h3>
                    <div class="container extra2">
                        <ul id="episodesList" class="list-group list-group-flush">

                        </ul>

                    </div>
                    <div id="buttons" class="text-right">

                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-wrap">
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

<!-- start footer Area -->
<%@ include file="footer.jsp" %>
<!-- End footer Area -->


<script>
    $(document).ready(function () {
        let podcastId = ${podcastId};
        let completionStatus = ${completionStatus};
        let publishStatus = ${publishStatus};
        console.log(completionStatus);

        $.post("<%=GlobalVariable.localUrl%>/getEpisodesOfPodcast", {podcastId: podcastId}, function (result) {
            console.log(result);
            let design = '';
            let draftName = '';
            let urlLink = '';
            result.map(episode => {
                draftName = '';
                if (episode.status === 0) {
                    draftName = ' <small style="color: red;">(Draft)</small> ';
                    urlLink = '<%=GlobalVariable.localUrl%>/listening?episodeId=' + episode.id;
                } else {
                    urlLink = '<%=GlobalVariable.localUrl%>/listening?episodeId=' + episode.id;
                }

                design += '<a href="' + urlLink + '"><li class="list-group-item">' + draftName + episode.episodeName +
                    '<small><p><i style="color: red;" class="fas fa-heart"></i> ' + episode.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + episode.numberOfComments + ' &nbsp; <i class="fas fa-eye"></i> ' + episode.totalViews + '</p></small>' +
                    '</li></a>';

            });

            document.getElementById('episodesList').innerHTML = design;
            let buttonsDesign = '';
            if (completionStatus === 0) {
                if (publishStatus == 1) {
                    buttonsDesign = '<button onclick="completePodcast(${podcastId})" class="btn btn-warning">Make Completed <i class="fas fa-check-circle"></i></button> ' +
                        '<button class="btn btn-primary"><a style="color: white" href="<%=GlobalVariable.localUrl%>/uploadEpisode?episodeNo=${nextEpisodeNo}"> Add a New Episode </a></button>';
                } else {
                    buttonsDesign = '<button onclick="publishPodcast(${podcastId})" class="btn btn-info">Publish Podcast <i class="fas fa-check-circle"></i></button> ' +
                        '<button class="btn btn-primary"><a style="color: white" href="<%=GlobalVariable.localUrl%>/uploadEpisode?episodeNo=${nextEpisodeNo}"> Add a New Episode </a></button>'
                }

            } else {
                buttonsDesign = '<button class="btn btn-success">Completed <i class="fas fa-check-circle"></i></button>';
            }

            document.getElementById('buttons').innerHTML = buttonsDesign;
        });


        <%--$.post("<%=GlobalVariable.localUrl%>/getMyDraftPodcasts", {userId: ${userId}}, function (result) {--%>
        <%--    console.log(result);--%>

        <%--    let draftPodcastDesign = '';--%>

        <%--    result.map( episode => {--%>
        <%--        draftPodcastDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +--%>
        <%--            ' <div class="thumb">' +--%>
        <%--            '<img class="img-fluid" src="img/blog/pp1.jpg" alt="">' +--%>
        <%--            '</div>' +--%>
        <%--            '<div class="details">' +--%>
        <%--            '<a href="blog-single.html">' +--%>
        <%--            '<h6>' + episode.episodeName + '</h6>' +--%>
        <%--            '</a>' +--%>
        <%--            ' </div>' +--%>
        <%--            '</div>';--%>
        <%--    });--%>

        <%--    document.getElementById('myDraftPodcasts').innerHTML = draftPodcastDesign;--%>
        <%--});--%>

        $.post("<%=GlobalVariable.localUrl%>/getMyMostPopularPodcasts", {userId: ${userId}}, function (result) {
            console.log('Popular', result);

            let mostPopularPodcastDesign = '';

            result.map( podcast => {
                mostPopularPodcastDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +
                    ' <div class="thumb">' +
                    '<img style="width: 100px; height: 100px;" src="' + podcast.coverPhotoLink + '" alt="">' +
                    '</div>' +
                    '<div class="details">' +
                    '<a href="<%=GlobalVariable.localUrl%>/podcastDetailsUser?id=' + podcast.id + '">' +
                    '<h6>' + podcast.seriesName + '</h6>' +
                    '</a>' +
                    '<p><i class="fas fa-heart" style="color:red;"></i> ' + podcast.numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + podcast.numberOfComments + '</p>' +
                    ' </div>' +
                    '</div>';
            });

            document.getElementById('myMostPopular').innerHTML = mostPopularPodcastDesign;
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
</script>

</body>
</html>
