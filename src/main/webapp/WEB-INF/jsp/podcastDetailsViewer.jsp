<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 10/22/2021
  Time: 3:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/reading/main.css">
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
<!-- End post-content Area -->

<!-- start footer Area -->
<footer class="footer-area section-gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h4>Top Products</h4>
                    <ul>
                        <li><a href="#">Managed Website</a></li>
                        <li><a href="#">Manage Reputation</a></li>
                        <li><a href="#">Power Tools</a></li>
                        <li><a href="#">Marketing Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h4>Quick links</h4>
                    <ul>
                        <li><a href="#">Jobs</a></li>
                        <li><a href="#">Brand Assets</a></li>
                        <li><a href="#">Investor Relations</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h4>Features</h4>
                    <ul>
                        <li><a href="#">Jobs</a></li>
                        <li><a href="#">Brand Assets</a></li>
                        <li><a href="#">Investor Relations</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#">Guides</a></li>
                        <li><a href="#">Research</a></li>
                        <li><a href="#">Experts</a></li>
                        <li><a href="#">Agencies</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4  col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h4>Newsletter</h4>
                    <p>Stay update with our latest</p>
                    <div class="" id="mc_embed_signup">
                        <form target="_blank"
                              action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                              method="get">
                            <div class="input-group">
                                <input type="text" class="form-control" name="EMAIL"
                                       placeholder="Enter Email Address" onfocus="this.placeholder = ''"
                                       onblur="this.placeholder = 'Enter Email Address '" required="" type="email">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <span class="lnr lnr-arrow-right"></span>
                                    </button>
                                </div>
                                <div class="info"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom row align-items-center justify-content-between">
            <p class="footer-text m-0 col-lg-6 col-md-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i
                    class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                        target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com"
                                                                                                                             target="_blank">ThemeWagon</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            <div class="col-lg-6 col-sm-12 footer-social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-dribbble"></i></a>
                <a href="#"><i class="fa fa-behance"></i></a>
            </div>
        </div>
    </div>
</footer>
<!-- End footer Area -->

<script src="js/global/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="js/global/bootstrap.min.js"></script>
<script src="reading/https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
<script src="js/global/easing.min.js"></script>
<script src="js/global/hoverIntent.js"></script>
<script src="js/global/superfish.min.js"></script>
<script src="js/global/jquery.ajaxchimp.min.js"></script>
<script src="js/global/jquery.magnific-popup.min.js"></script>
<script src="js/global/jquery.tabs.min.js"></script>
<script src="js/global/jquery.nice-select.min.js"></script>
<script src="js/global/owl.carousel.min.js"></script>
<script src="js/global/mail-script.js"></script>
<script src="https://use.fontawesome.com/0206006232.js"></script>
<script src="js/reading/main.js"></script>
