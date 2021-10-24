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
<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Book Name
                </h1>
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
                                 src="img/blog/feature-img1.jpg">
                        </div>
                    </div>
                    <h3 class="mt-20 mb-10"> 01. Chapter Name </h3>
                    <a class="mb-10" href="#">Genre Name</a>
                    <div class="user-details row">
                        <div class="col-lg-12">
                            <i class="fas fa-calendar-alt"></i> 12 Dec, 2017 &nbsp; &nbsp; &nbsp;
                            <i class="fas fa-heart"></i> 100 Reacts &nbsp; &nbsp; &nbsp;
                            <i class="fas fa-eye"></i> 1.2M Views &nbsp; &nbsp; &nbsp;
                            <i class="fas fa-comments"></i> 06 Comments
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
                            <div class="text-right">
                                <button class="btn btn-outline-warning"><i class="fas fa-flag"></i> Report</button>
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
                <div class="comments-area">
                    <h4>05 Comments</h4>
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="img/blog/c1.jpg" alt="">
                                </div>
                                <div class="desc">
                                    <h5><a href="#">Emilly Blunt</a></h5>
                                    <p class="date">December 4, 2017 at 3:12 pm </p>
                                    <p class="comment">
                                        Never say goodbye till the end comes!
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="img/blog/c4.jpg" alt="">
                                </div>
                                <div class="desc">
                                    <h5><a href="#">Maria Luna</a></h5>
                                    <p class="date">December 4, 2017 at 3:12 pm </p>
                                    <p class="comment">
                                        Never say goodbye till the end comes!
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="img/blog/c5.jpg" alt="">
                                </div>
                                <div class="desc">
                                    <h5><a href="#">Ina Hayes</a></h5>
                                    <p class="date">December 4, 2017 at 3:12 pm </p>
                                    <p class="comment">
                                        Never say goodbye till the end comes!
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="comment-form">
                    <h4>Leave a Comment</h4>
                    <form>
                        <div class="form-group">
								<textarea class="form-control mb-10" rows="5" name="message"
                                          placeholder="Your Comment..." onfocus="this.placeholder = ''"
                                          onblur="this.placeholder = 'Your Comment...'" required=""></textarea>
                        </div>
                        <a href="#" class="primary-btn text-uppercase">Post Comment</a>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-wrap">
                    <div class="single-sidebar-widget user-info-widget">
                        <img src="img/blog/user-info.png" alt="">
                        <a href="#">
                            <h4>Charlie Barber</h4>
                        </a>
                        <p>
                            <i class="fas fa-user-friends"></i> 100 &nbsp; <i class="fas fa-award"></i> 3 &nbsp; <i
                                style="color: #DAA520;" class="fas fa-trophy"></i> 3 &nbsp; <i class="fas fa-heart"
                                                                                               style="color:red;"></i> 100
                        </p>
                        <ul class="social-links">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-github"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                        <p>
                            User Bio: Boot camps have its supporters andit sdetractors. Some people do not
                            understand why you
                            should have to spend money on boot camp when you can get. Boot camps have itssuppor ters
                            andits detractors.
                        </p>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">Popular From This Author</h4>
                        <div class="popular-post-list">
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp1.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Space The Final Frontier</h6>
                                    </a>
                                    <p><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</p>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp2.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>The Amazing Hubble</h6>
                                    </a>
                                    <p><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</p>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp3.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Astronomy Or Astrology</h6>
                                    </a>
                                    <p><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</p>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp4.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Asteroids telescope</h6>
                                    </a>
                                    <p><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</p>
                                </div>
                            </div>
                        </div>
                        <span> <a style="margin-left: 70%;" href=""> View More </a> </span>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">More From This Genre</h4>
                        <div class="popular-post-list">
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp1.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Space The Final Frontier</h6>
                                    </a>
                                    <p> <i class="fas fa-user"></i> John Doe</p>
                                    <small><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</small>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp2.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>The Amazing Hubble</h6>
                                    </a>
                                    <p> <i class="fas fa-user"></i> John Doe</p>
                                    <small><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</small>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp3.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Astronomy Or Astrology</h6>
                                    </a>
                                    <p> <i class="fas fa-user"></i> John Doe</p>
                                    <small><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</small>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp4.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Asteroids telescope</h6>
                                    </a>
                                    <p> <i class="fas fa-user"></i> John Doe</p>
                                    <small><i class="fas fa-heart" style="color:red;"></i> 78 &nbsp; <i
                                            class="fas fa-comments"></i> 87</small>
                                </div>
                            </div>
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
        $.post("<%=GlobalVariable.localUrl%>/uploadChapter", {}, function(result){
            console.log(result);
        });
    });

    $("#heart").click(function () {
        if ($("#heart").hasClass("liked")) {
            $("#heart").html('<i style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true"></i>');
            $("#heart").removeClass("liked");
        } else {
            $("#heart").html('<i style="font-size: 25px;" class="fa fa-heart" aria-hidden="true"></i>');
            $("#heart").addClass("liked");
        }
    });
</script>

</body>

</html>
