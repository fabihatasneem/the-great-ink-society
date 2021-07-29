<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/writepage/froala_editor.css">
<link rel="stylesheet" href="css/writepage/froala_style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">
<link rel="stylesheet" href="css/reading/main.css">

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
<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    New Podcast(A fancy heading for a new story or something)
                </h1>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- Start post-content Area -->
<section class="post-content-area single-post-area" style="padding-top: 40px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="container">
                    <h2>Some Instructions</h2>
                    <p>What is Lorem Ipsum?
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

                        Why do we use it?
                        It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


                        Where does it come from?
                        Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

                        The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                </div>
                <div class="cycle-tab-container">
                    <ul class="nav nav-tabs">
                        <li class="cycle-tab-item">
                            <a class="nav-link" role="tab" data-toggle="tab" href="#new">New Podcast</a>
                        </li>
                        <li class="cycle-tab-item">
                            <a class="nav-link" role="tab" data-toggle="tab" href="#existing">Add an Episode to a Podcast</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">
                            <div class="container">
                                <form action="podcastSubmit">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="podcastname">Podcasr Name</label>
                                            <input type="text" class="form-control" id="podcastname"
                                                   placeholder="Podcast Name">
                                        </div>
                                        <div class="custom-file col-md-6">
                                            <label for="episodename">Podcast Cover Photo(.jpg/.png)</label>
                                            <input type="file" class="form-control" id="episodename">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress">Description</label>
                                        <textarea class="form-control" placeholder="Description"></textarea>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="language">Langugage</label>
                                            <select id="language" class="form-control">
                                                <option selected>Choose...</option>
                                                <option>English</option>
                                                <option>Bangla</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="genre">Genre</label>
                                            <select id="genre" class="form-control">
                                                <option selected>Choose...</option>
                                                <option>...</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="justify-content: flex-end;" class="form-row">
                                        <button type="submit" class="btn btn-warning">Save to Draft</button>&nbsp;
                                        <button type="submit" class="btn btn-primary">Start Uploading</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="existing" role="tabpanel" aria-labelledby="existing-tab">
                            <div class="container">
                                <h3 style="padding: 20px;">Published</h3>
                                <div class="row people" style="row-gap: 30px;">
                                    <div class="col-md-12 col-lg-3 item">
                                        <div class="box">
                                            <img style="max-width: 140px;" class="img-thumbnail"
                                                 src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>
                                            <small><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-eye"></i> 100</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box">
                                            <img style="max-width: 140px;" class="img-thumbnail"
                                                 src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>
                                            <small><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-eye"></i> 100</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box"><img style="max-width: 140px;" class="img-thumbnail"
                                                              src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>
                                            <small><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-eye"></i> 100</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box"><img style="max-width: 140px;" class="img-thumbnail"
                                                              src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>
                                            <small><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-eye"></i> 100</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box"><img style="max-width: 140px;" class="img-thumbnail"
                                                              src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>
                                            <small><i style="color: red;" class="fas fa-heart"></i> 100 &nbsp; <i class="fas fa-eye"></i> 100</small>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <h3 style="padding: 20px;">Drafts</h3>
                                <div class="row people" style="row-gap: 30px;">
                                    <div class="col-md-12 col-lg-3 item">
                                        <div class="box">
                                            <img style="max-width: 140px;" class="img-thumbnail"
                                                 src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box">
                                            <img style="max-width: 140px;" class="img-thumbnail"
                                                 src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box"><img style="max-width: 140px;" class="img-thumbnail"
                                                              src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box"><img style="max-width: 140px;" class="img-thumbnail"
                                                              src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3 item">
                                        <div class="box"><img style="max-width: 140px;" class="img-thumbnail"
                                                              src="https://epicbootstrap.com/freebies/snippets/team-cards/assets/img/2.jpg">
                                            <h5 style="padding-top: 10px;" class="name">Podcast Name</h5>
                                            <p style="margin-bottom: auto;">Episodes: 10</p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
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
                </div>
            </div>
        </div>
    </div>
</section>


<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="js/writepage/froala_editor.min.js"></script>
<script type="text/javascript" src="js/writepage/plugins/draggable.min.js"></script>
<script type="text/javascript" src="js/writepage/plugins/entities.min.js"></script>

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
<script src="js/reading/main.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/bootstrap/3.3.5/js/bootstrap.js"></script>
<script>
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