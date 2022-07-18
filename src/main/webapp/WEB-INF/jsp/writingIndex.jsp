
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/writing-podcast/style.css" />
<link rel="stylesheet" href="css/writing-podcast/banner.css" />
<link rel="stylesheet" href="css/writing-podcast/main.css" />

<!-- #header -->
<!-- start banner Area -->
<div class="parallax-content baner-content active" id="home">
    <div class="container">
        <div class="first-content"></div>
    </div>
</div>

<!-- Search Modal Start -->
<div style="opacity: 0.9; background-color: #ea6161 !important;" class="modal fade bg-white" id="templatemo_search"
     tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="w-100 pt-1 mb-5 text-right">
            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="" method="get" class="modal-content modal-body border-0 p-0">
            <div class="input-group mb-2">
                <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                <button type="submit" class="input-group-text bg-success text-light">
                    <i class="fa fa-fw fa-search text-white"></i>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- Modal End -->

<!-- Details Modal Start -->
<div class="modal fade" id="detailsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Book title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="container-fluid">
                                <div class="text-center">
                                    <img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;"
                                         src="img/blog/feature-img1.jpg">
                                    <hr>
                                    <h4>Description</h4>
                                    &nbsp;
                                    <p class="text-left">
                                        Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                                        been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of
                                        type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                                        leap into electronic typesetting, remaining essentially unchanged.
                                    </p>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="container extra">
                                <div class="row">
                                    <p><i class="fas fa-book-open"></i> Number of Chapters Published: 50</p>
                                    &nbsp;
                                    <p><i class="fas fa-language"></i> Language: </p>
                                    <p><i class="fas fa-theater-masks"></i> Genre: </p>
                                    <p><i class="fas fa-clock"></i> Last Updated 12/12/2021</p>
                                    <p><i class="fas fa-eye"></i> Total Views 100</p>
                                    <p><i style="color: red;" class="fas fa-heart"></i> Total Reacts 100</p>
                                    <p><i class="fas fa-comments"></i> Total Comments 100</p>
                                    <p> <i style="color: #daa520" class="fas fa-trophy"></i> Awards Won 5</p>
                                    <br><br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="text-left">
                    <div name="heart" id="heart" class="text-left" style="margin-right: 550px;">
                        <i style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true"></i>
                        <button class="btn btn-outline-warning"><i class="fas fa-comments"></i>Comments</button>
                    </div>
                </div>
                <button type="button" class="btn btn-primary">View Details</button>
            </div>
        </div>
    </div>
</div>

<!-- Details Modal End -->
<!-- End banner Area -->

<!-- Last Viewed Start -->

<div class="container">
    <div class="row">
        <div class="latest-products">
            <div class="section-heading">
                <h2>Continue From Where You Left Off</h2>
            </div>
            <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                <div class="image" style="background-image: url('images/img_4.jpg')"></div>
                <div class="text">
                    <h3 class="font-weight-medium" style="font-size: 1.3rem;">
                        <a href="single-post.html">Episode 08: How To Create Web Page Using Bootstrap 4</a>
                    </h3>
                    <hr>
                    <h6 class="font-weight-light" style="margin-top: 7px; margin-bottom: 8px; font-size: 1.1rem;">
                        Episode Name
                    </h6>
                    <div class="text-white mb-3">
              <span style="font-size: 95%;" class="text-black-opacity-05"><small><i class="fas fa-user"></i> Mike Smith
                  <span class="sep"><i class="fas fa-heart" style="color:red;"></i></span>78 &nbsp; <i
                          class="fas fa-comments"></i> 87
                </small></span>
                    </div>
                    <hr>
                    <p class="mb-4">
                        Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                        been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of
                        type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                        leap into electronic typesetting, remaining essentially unchanged.

                        <a href="">
                            (...Continue)
                        </a>

                    </p>
                </div>
            </div>
            <div class="section-heading">
                <a href="products.html">Go to Chapter Page <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
    </div>
</div>

<!-- Last Viewed End -->

<!-- Genre Start -->
<div>
    <div class="top-category-widget-area pt-90 pb-90">
        <div class="container text-center">
            <h2 class="font-weight-medium" style="margin-bottom: 40px; color: azure;">Something You Prefer</h2>
            <div class="row mx-auto my-auto">
                <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
                    <div class="carousel-inner w-100" role="listbox">
                        <div class="carousel-item active">
                            <div class="col-md-4">
                                <div class="single-cat-widget">
                                    <div class="content relative">
                                        <div class="overlay overlay-bg"></div>
                                        <a href="#" target="_blank">
                                            <div class="thumb" style="height: 170px;">
                                                <img class="content-image img-fluid d-block mx-auto"
                                                     src="img/blog/118Z_2012.w017.n001.334B.p15.334.jpg" alt="" />
                                            </div>
                                            <div class="content-details">
                                                <h4 class="content-title mx-auto text-uppercase">
                                                    Fantasy
                                                </h4>
                                                <span></span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="col-md-4">
                                <div class="single-cat-widget">
                                    <div class="content relative">
                                        <div class="overlay overlay-bg"></div>
                                        <a href="#" target="_blank">
                                            <div class="thumb" style="max-height: 170px;">
                                                <img class="content-image img-fluid d-block mx-auto"
                                                     src="img/blog/silhouette-couple-love-kissing-sunset-couple-love-concept.jpg" alt="" />
                                            </div>
                                            <div class="content-details">
                                                <h4 class="content-title mx-auto text-uppercase">
                                                    Romance
                                                </h4>
                                                <span></span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="col-md-4">
                                <div class="single-cat-widget">
                                    <div class="content relative">
                                        <div class="overlay overlay-bg"></div>
                                        <a href="#" target="_blank">
                                            <div class="thumb" style="max-height: 170px;">
                                                <img class="content-image img-fluid d-block mx-auto"
                                                     src="img/blog/7Z_2103.w030.n002.6B.p30.6.jpg" alt="" />
                                            </div>
                                            <div class="content-details">
                                                <h4 class="content-title mx-auto text-uppercase">
                                                    Sci Fi
                                                </h4>
                                                <span></span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="col-md-4">
                                <div class="single-cat-widget">
                                    <div class="content relative">
                                        <div class="overlay overlay-bg"></div>
                                        <a href="#" target="_blank">
                                            <div class="thumb" style="max-height: 170px;">
                                                <img class="content-image img-fluid d-block mx-auto" src="img/blog/horror.jpg" alt="" />
                                            </div>
                                            <div class="content-details">
                                                <h4 class="content-title mx-auto text-uppercase">
                                                    Horror
                                                </h4>
                                                <span></span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="col-md-4">
                                <div class="single-cat-widget">
                                    <div class="content relative">
                                        <div class="overlay overlay-bg"></div>
                                        <a href="#" target="_blank">
                                            <div class="thumb" style="max-height: 170px;">
                                                <img class="content-image img-fluid d-block mx-auto" src="img/blog/history.jpg" alt="" />
                                            </div>
                                            <div class="content-details">
                                                <h4 class="content-title mx-auto text-uppercase">
                                                    History
                                                </h4>
                                                <span></span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev w-auto" href="#recipeCarousel" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon bg-dark border border-dark rounded-circle"
                    aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next w-auto" href="#recipeCarousel" role="button" data-slide="next">
              <span class="carousel-control-next-icon bg-dark border border-dark rounded-circle"
                    aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<br />

<!-- Genre End -->

<!-- Most Popular Start -->

<div class="latest-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>Most Popular</h2>
                    <a href="#">View More <i class="fa fa-angle-right"></i></a>
                </div>
            </div>
            <div class="row" id="most-popular-books-row">

            </div>
        </div>
    </div>
</div>

<!-- Most Popular End -->

<!-- Most Recent Start -->

<div class="latest-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>Most Recent</h2>
                    <a href="#">View More<i class="fa fa-angle-right"></i></a>
                </div>
            </div>
            <div class="row" id="most-recent-books-row">

            </div>
        </div>
    </div>
</div>

<!-- Most Recent End -->

<!-- Followers Post -->

<div class="container">
    <div class="row">
        <div class="latest-products">
            <div class="section-heading">
                <h2>From Your Followings</h2>
            </div>
            <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                <div class="image" style="background-image: url('images/img_4.jpg')"></div>
                <div class="text">
                    <h3 class="font-weight-medium" style="font-size: 1.3rem;">
                        <a href="single-post.html">Episode 08: How To Create Web Page Using Bootstrap 4</a>
                    </h3>
                    <hr>
                    <h6 class="font-weight-light" style="margin-top: 7px; margin-bottom: 8px; font-size: 1.1rem;">
                        Episode Name
                    </h6>
                    <div class="text-white mb-3">
              <span style="font-size: 95%;" class="text-black-opacity-05"><small><i class="fas fa-user"></i> Mike Smith
                  <span class="sep"><i class="fas fa-heart" style="color:red;"></i></span>78 &nbsp; <i
                          class="fas fa-comments"></i> 87
                </small></span>
                    </div>
                    <hr>
                    <p class="mb-4">
                        Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                        been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of
                        type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                        leap into electronic typesetting, remaining essentially unchanged.

                        <a href="">
                            (...Continue)
                        </a>

                    </p>
                </div>
            </div>
            <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                <div class="image" style="background-image: url('images/img_4.jpg')"></div>
                <div class="text">
                    <h3 class="font-weight-medium" style="font-size: 1.3rem;">
                        <a href="single-post.html">Episode 08: How To Create Web Page Using Bootstrap 4</a>
                    </h3>
                    <hr>
                    <h6 class="font-weight-light" style="margin-top: 7px; margin-bottom: 8px; font-size: 1.1rem;">
                        Episode Name
                    </h6>
                    <div class="text-white mb-3">
              <span style="font-size: 95%;" class="text-black-opacity-05"><small><i class="fas fa-user"></i> Mike Smith
                  <span class="sep"><i class="fas fa-heart" style="color:red;"></i></span>78 &nbsp; <i
                          class="fas fa-comments"></i> 87
                </small></span>
                    </div>
                    <hr>
                    <p class="mb-4">
                        Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                        been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of
                        type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                        leap into electronic typesetting, remaining essentially unchanged.

                        <a href="">
                            (...Continue)
                        </a>
                    </p>
                </div>
            </div>
            <div class="section-heading">
                <a href="#">View More <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
    </div>
</div>

<!-- Followers End -->

<%@ include file="footer.jsp" %>

<script>
    $(document).ready(function () {
        let username = '<%=session.getAttribute("username")%>';
        let userId = '<%=session.getAttribute("userId")%>';
        $.post("<%=GlobalVariable.localUrl%>/getMostPopularBooks", {}, function (result) {
            console.log(result);
            for(var i = 0; i < 3; i++){
                let design = '<div class="col-md-4">'+
                '<div class="product-item">'+
                        '<a data-toggle="modal" data-target="#detailsModal" href="#"><img src="images/' + result[i].coverPhotoName + '" alt="" /></a>'+
                        '<div class="down-content">'+
                            '<a href="#">'+
                                '<h4>' + result[i].bookName + '</h4>'+
                            '</a>'+
                            '<small><i class="fas fa-user"></i> &nbsp' + result[i].user.fullName + '&nbsp; <i class="fas fa-heart" style="color:red;"></i> ' + result[i].numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + result[i].numberOfComments + '</small>'+
                            '<hr>'+
                                '<p>' + result[i].description + '</p>'+
                                '<span style="margin-right: 65%; color: grey;"> Chapters : ' + result[i].numberOfChapters + ' </span>'+
                                '<span><a href="">Start Reading</a></span>'+
                        '</div>'+
                    '</div>'+
                    '</div>';
                document.getElementById('most-popular-books-row').innerHTML += design;
            }
        });
        $.post("<%=GlobalVariable.localUrl%>/getMostRecentBooks", {}, function (result) {
            console.log(result);
            for(var i = 0; i < 3; i++){
                let design = '<div class="col-md-4">'+
                    '<div class="product-item">'+
                    '<a data-toggle="modal" data-target="#detailsModal" href="#"><img src="images/' + result[i].coverPhotoName + '" alt="" /></a>'+
                    '<div class="down-content">'+
                    '<a href="#">'+
                    '<h4>' + result[i].bookName + '</h4>'+
                    '</a>'+
                    '<small><i class="fas fa-user"></i> &nbsp' + result[i].user.fullName + '&nbsp; <i class="fas fa-heart" style="color:red;"></i> ' + result[i].numberOfLikes + ' &nbsp; <i class="fas fa-comments"></i> ' + result[i].numberOfComments + '</small>'+
                    '<hr>'+
                    '<p>' + result[i].description + '</p>'+
                    '<span style="margin-right: 65%; color: grey;"> Chapters : ' + result[i].numberOfChapters + ' </span>'+
                    '<span><a href="">Start Reading</a></span>'+
                    '</div>'+
                    '</div>'+
                    '</div>';
                document.getElementById('most-recent-books-row').innerHTML += design;
            }
        });

    });
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

    $("#recipeCarousel").carousel({
        interval: 10000,
    });

    $(".carousel .carousel-item").each(function () {
        var minPerSlide = 3;
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(":first");
        }
        next.children(":first-child").clone().appendTo($(this));

        for (var i = 0; i < minPerSlide; i++) {
            next = next.next();
            if (!next.length) {
                next = $(this).siblings(":first");
            }

            next.children(":first-child").clone().appendTo($(this));
        }
    });

</script>

</body>

</html>