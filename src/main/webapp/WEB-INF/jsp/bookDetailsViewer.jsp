<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 10/22/2021
  Time: 3:10 AM
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
                        <img style="max-width: 100%; height: auto; min-width: 300px; max-height: 350px;"  src="img/blog/feature-img1.jpg">
                        <h2 style="padding: 15px 0;">Book Name</h2>
                    </div>
                    <div class="container extra">
                        <div class="row">
                            <div class="col-lg-7">
                                <p><i class="fas fa-book-open"></i> Number of Chapters Published: 50</p>
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
                        </div>
                    </div>
                    <h3 style="margin: 20px 0;">
                        Chapters
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
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-wrap">
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
<%@ include file="footer.jsp" %>

</body>
</html>



