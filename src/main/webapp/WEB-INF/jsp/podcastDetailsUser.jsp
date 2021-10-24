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
                        <img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;"  src="img/blog/feature-img1.jpg">
                        <h2 style="padding: 15px 0;">Podcast Name</h2>
                    </div>
                    <div class="container extra">
                        <div class="row">
                            <div class="col-lg-7">
                                <p><i class="fas fa-book-open"></i> Number of Episodes Published: 50</p>
                                <p><i class="fas fa-language"></i> Language: </p>
                                <p><i class="fas fa-theater-masks"></i> Genre: </p>
                                <p><i class="fas fa-clock"></i> Last Updated 12/12/2021</p>
                            </div>
                            <div class="col-lg-5">
                                <p><i class="fas fa-eye"></i> Total Views 100</p>
                                <p><i style="color: red;" class="fas fa-heart"></i> Total Reacts 100</p>
                                <p><i class="fas fa-comments"></i> Total Comments 100</p>
                                <p> <i style="color: #daa520" class="fas fa-trophy"></i> Awards Won 5</p>
                            </div>
                            <br><br>
                            <form>
                                <div class="form-group mt-20">
                                    <label style="font-weight: bold;" for="inputAddress">Description</label>
                                    <textarea class="form-control" placeholder="Description"></textarea>
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
                        <ul class="list-group list-group-flush">
                            <a href="#"><li class="list-group-item">01. justo odio
                                <small><p><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-comments"></i> 100 <i class="fas fa-eye"></i> 100</p></small>
                            </li></a>
                            <a href="#"><li class="list-group-item">02. justo odio
                                <small><p><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-comments"></i> 100 <i class="fas fa-eye"></i> 100</p></small>
                            </li></a>
                            <a href="#"><li class="list-group-item">03. justo odio
                                <small><p><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-comments"></i> 100 <i class="fas fa-eye"></i> 100</p></small>
                            </li></a>
                            <a href="#"><li class="list-group-item">04. justo odio
                                <small><p><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-comments"></i> 100 <i class="fas fa-eye"></i> 100</p></small>
                            </li></a>
                            <a href="#"><li class="list-group-item">05. justo odio
                                <small><p><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-comments"></i> 100 <i class="fas fa-eye"></i> 100</p></small>
                            </li></a>
                            <a href="#"><li class="list-group-item"> <small style="color: red;">(Draft)</small> justo odio
                                <small><p><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-comments"></i> 100 <i class="fas fa-eye"></i> 100</p></small>
                            </li></a>
                        </ul>
                    </div>
                    <div class="text-right">
                        <button class="btn btn-warning">Make Completed <i class="fas fa-check-circle"></i></button>
                        <button class="btn btn-primary">Add a New Episode</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-wrap">
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">My Drafts</h4>
                        <div class="popular-post-list">
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp1.jpg" alt="">
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Space The Final Frontier</h6>
                                    </a>

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

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">Most Popular</h4>
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
                        <h4 class="popular-title">Most Viewed</h4>
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
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End post-content Area -->

<!-- start footer Area -->
<%@ include file="footer.jsp" %>
<!-- End footer Area -->

</body>
</html>
