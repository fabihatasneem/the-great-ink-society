<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/19/2021
  Time: 9:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/homepage/swiper.css" />
<link rel="stylesheet" href="css/homepage/slick.css" />

<!-- Header -->
<div id="header" class="header" style="background-color: #081328">
    <div class="header-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="text-container">
                        <h1 style="color:white">Welcome To<br><span class="turquoise"> The Great Ink Society</span></h1>
                        <p class="p-large">Let your stories be told. Let your imaginations be heard.</p>
                        <a class="btn-solid-lg page-scroll" href="index.jsp">DISCOVER</a>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    <div class="image-container">
                        <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Findex.png?alt=media&token=718731f4-fe68-4153-a6bb-75c5cc03dbd3" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of header-content -->
</div> <!-- end of header -->
<!-- end of header -->

<!-- Details 2 -->
<div class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fteam.png?alt=media&token=23183e0e-5e94-423f-a8e5-72ccb3477eb1" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Who We Are</h2>
                    <p>Do you have a story to tell? Do you have that silly poem hidden inside your notebook that you
                        want to share with people all over the world? Do you have that stupid horror story recording in
                        your phone that you want people to hear? Great! Then you are just like us.
                    </p>
                    <button class="btn-solid-reg"><a href="<%=GlobalVariable.localUrl%>/signup">Join Us</a></button>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-2 -->
<!-- end of details 2 -->

<!-- Details 1 -->
<div class="basic-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>What You Can Do</h2>
                    <p>The Great Ink Society is a free online platform for creative people to share their creativity
                        in textual or audio format. Here you can share your own fictions, poetry, music or anything
                        you want ** definitely with proper copyright! **
                    </p>
                    <button class="btn-solid-reg"><a href="<%=GlobalVariable.localUrl%>/signup">Join Us</a></button>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fcreativity.png?alt=media&token=654cd3c8-e1da-416c-9dd0-36e5af65fff0" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-1 -->
<!-- end of details 1 -->

<!-- Details 3 -->
<div class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwriting.png?alt=media&token=7de0dffc-eb70-4c0f-a57f-49be442fcf5f" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Write Your Own Stories</h2>
                    <p>Stop whining & start writing! We are hunting for all the writers of the world.
                    So which story are you going to tell us?</p>
                    <button class="btn-solid-reg"><a href="writingIndex.jsp">Start Writing</a></button>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-2 -->
<!-- end of details 3 -->

<!-- Details 4 -->
<div class="basic-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Tell us your stories & keep our ears smiling with your podcasts. </h2>
                    <p>Podcast Content</p>
                    <button class="btn-solid-reg"><a href="podcastIndex.jsp">Start Storytelling</a></button>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Flistening.png?alt=media&token=d6563a0d-1784-4a26-b74f-0647415976ca" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-1 -->
<!-- end of details 4 -->

<!-- Start Counter -->
<section id="mu-counter">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="mu-counter-area">

                    <div class="mu-counter-block">
                        <div class="row">

                            <!-- Start Single Counter -->
                            <div class="col-md-3 col-sm-6">
                                <div class="mu-single-counter">
                                    <i class="fa fa-users" aria-hidden="true"></i>
                                    <div class="counter-value" data-count="650"></div>
                                    <h5 class="mu-counter-name">Total Members</h5>
                                </div>
                            </div>
                            <!-- / Single Counter -->

                            <!-- Start Single Counter -->
                            <div class="col-md-3 col-sm-6">
                                <div class="mu-single-counter">
                                    <i class="fa fa-book" aria-hidden="true"></i>
                                    <div class="counter-value" data-count="422">0</div>
                                    <h5 class="mu-counter-name">Books</h5>
                                </div>
                            </div>
                            <!-- / Single Counter -->

                            <!-- Start Single Counter -->
                            <div class="col-md-3 col-sm-6">
                                <div class="mu-single-counter">
                                    <i class="fa fa-music" aria-hidden="true"></i>
                                    <div class="counter-value" data-count="1055">0</div>
                                    <h5 class="mu-counter-name">Podcasts</h5>
                                </div>
                            </div>
                            <!-- / Single Counter -->

                            <!-- Start Single Counter -->
                            <div class="col-md-3 col-sm-6">
                                <div class="mu-single-counter">
                                    <i class="fa fa-trophy" aria-hidden="true"></i>
                                    <div class="counter-value" data-count="03">0</div>
                                    <h5 class="mu-counter-name">Awards</h5>
                                </div>
                            </div>
                            <!-- / Single Counter -->

                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Counter -->

<!-- ***** Categories Start ***** -->
<section class="mini" id="work-process">
    <div class="mini-content">
        <div class="container">
            <div class="row">
                <div class="offset-lg-3 col-lg-6">
                    <div class="info">
                        <h1>Explore Various Categories</h1>
                    </div>
                </div>
            </div>

            <!-- ***** Mini Box Start ***** -->
            <div class="row">
                <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                    <a href="#" class="mini-box">
                        <i><img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwork-process-item-01.png?alt=media&token=0a91db4e-e652-44fa-8988-d0b5917961eb" alt=""></i>
                        <strong>Science Fiction</strong>
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                    <a href="#" class="mini-box">
                        <i><img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwork-process-item-01.png?alt=media&token=0a91db4e-e652-44fa-8988-d0b5917961eb" alt=""></i>
                        <strong>Mystery</strong>
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                    <a href="#" class="mini-box">
                        <i><img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwork-process-item-01.png?alt=media&token=0a91db4e-e652-44fa-8988-d0b5917961eb" alt=""></i>
                        <strong>Adventure</strong>
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                    <a href="#" class="mini-box">
                        <i><img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwork-process-item-01.png?alt=media&token=0a91db4e-e652-44fa-8988-d0b5917961eb" alt=""></i>
                        <strong>Humor</strong>
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                    <a href="#" class="mini-box">
                        <i><img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwork-process-item-01.png?alt=media&token=0a91db4e-e652-44fa-8988-d0b5917961eb" alt=""></i>
                        <strong>Paranormal</strong>
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                    <a href="#" class="mini-box">
                        <i><img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwork-process-item-01.png?alt=media&token=0a91db4e-e652-44fa-8988-d0b5917961eb" alt=""></i>
                        <strong>Horror</strong>
                    </a>
                </div>
            </div>
            <!-- ***** Mini Box End ***** -->
        </div>
    </div>
</section>
<!-- ***** Categories End ***** -->

<!-- Badges -->
<div class="slider-2">
    <div class="container">
        <div class="row">

            <div class="col-lg-6">
                <h2>Get Recognition For Your Work</h2>

                <!-- Card Slider -->
                <div class="slider-container">
                    <div class="swiper-container card-slider">
                        <div class="swiper-wrapper">

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="images/testimonial-1.svg" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Badge 1</p>
                                        <p class="testimonial-text">10 points</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="images/testimonial-2.svg" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Badge 2</p>
                                        <p class="testimonial-text">50 points</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="images/testimonial-3.svg" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Badge 3</p>
                                        <p class="testimonial-text">100 points</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                        </div> <!-- end of swiper-wrapper -->

                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <!-- end of add arrows -->

                    </div> <!-- end of swiper-container -->
                </div> <!-- end of slider-container -->
                <!-- end of card slider -->

            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="images/testimonials-2-men-talking.svg" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of slider-2 -->
<!-- end of Badges -->


<!-- Competitions -->
<div class="slider-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="images/testimonials-2-men-talking.svg" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <h2>Attend Competitions</h2>

                <!-- Card Slider -->
                <div class="slider-container">
                    <div class="swiper-container card-slider">
                        <div class="swiper-wrapper">

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="images/testimonial-1.svg" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Competition name 1</p>
                                        <p class="testimonial-text">A Writing Competition Details 1</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="images/testimonial-2.svg" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Competition name 2</p>
                                        <p class="testimonial-text">A Storytelling Competition Details 1</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="images/testimonial-3.svg" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Competition name 3</p>
                                        <p class="testimonial-text">A Writing Competition Details 2</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                        </div> <!-- end of swiper-wrapper -->

                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <!-- end of add arrows -->

                    </div> <!-- end of swiper-container -->
                </div> <!-- end of slider-container -->
                <!-- end of card slider -->

            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of slider-2 -->
<!-- end of Competitions -->

<!-- Start Review -->
<section id="mu-testimonials">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="mu-testimonials-area">
                    <div class="mu-heading-area">
                        <h2 class="mu-heading-title">What Our Readers Say</h2>
                        <span class="mu-header-dot"></span>
                    </div>

                    <div class="mu-testimonials-block">
                        <ul class="mu-testimonial-slide">

                            <li>
                                <p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever."</p>
                                <img class="mu-rt-img" src="images/team-member-3.svg" alt="img">
                                <h5 class="mu-rt-name"> - Alice Boga</h5>
                                <span class="mu-rt-title">CEO, Apple Inc.</span>
                            </li>

                            <li>
                                <p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever."</p>
                                <img class="mu-rt-img" src="images/team-member-4.svg" alt="img">
                                <h5 class="mu-rt-name"> - Jhon Doe</h5>
                                <span class="mu-rt-title">Director, Google Inc.</span>
                            </li>

                            <li>
                                <p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever."</p>
                                <img class="mu-rt-img" src="images/team-member-2.svg" alt="img">
                                <h5 class="mu-rt-name"> - Jessica Doe</h5>
                                <span class="mu-rt-title">Web Developer</span>
                            </li>

                        </ul>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Review -->


<!-- Start of Meet The Team Behind -->

<!-- Details 5 -->
<div class="basic-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Meet The Team Behind</h2>
                    <p>Team Blueth</p>
                    <button class="btn-solid-reg" onclick="http:/127.0.0.1:5502/about.html">Learn More</button>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="images/details-1-office-worker.svg" alt="alternative">
                </div> <!-- end of image-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of basic-1 -->
<!-- end of details 5 -->

<!-- End of Meet The Team Behind -->



<!-- Footer -->
<%@ include file="footer.jsp" %>
<!-- end of footer -->





<!-- Scripts -->








</body>

</html>
