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
                        <a class="btn-solid-lg page-scroll" href="<%=GlobalVariable.localUrl%>">DISCOVER</a>
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
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fcreativity.png?alt=media&token=da3ee0b3-38c5-431e-817d-cca52a73047f" alt="alternative">
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
                    <button class="btn-solid-reg"><a href="<%=GlobalVariable.localUrl%>/writingIndex">Start Writing</a></button>
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
                    <h2>Tell us your stories</h2>
                    <p>Keep our ears smiling with your podcasts. </p>
                    <button class="btn-solid-reg"><a href="<%=GlobalVariable.localUrl%>/podcastIndex">Start Storytelling</a></button>
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
                                    <img class="card-image" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fbadge.png?alt=media&token=b1b41c4d-8071-4943-8447-581e6a3b350d" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">The Wacky Wordsmith</p>
                                        <p class="testimonial-text">10 likes on Podcasts</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fbadge.png?alt=media&token=b1b41c4d-8071-4943-8447-581e6a3b350d" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">The Fantastic Fictionist</p>
                                        <p class="testimonial-text">50 likes on Books</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fbadge.png?alt=media&token=b1b41c4d-8071-4943-8447-581e6a3b350d" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">The Blooming Bookworm</p>
                                        <p class="testimonial-text">3 Book reads</p>
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
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2FAchievement-bro.png?alt=media&token=b8e7db57-bcd5-401c-ab78-922491284d12" alt="alternative">
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
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fawards.png?alt=media&token=644af9fa-0356-4b9a-90f4-d685e201cd66" alt="alternative">
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
                                    <img class="card-image" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Ftrophy.png?alt=media&token=4f6789df-7411-437b-a942-bcad91e66b1c" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Competition 1</p>
                                        <p class="testimonial-text">Adventurous Story Writing Competition</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Ftrophy.png?alt=media&token=4f6789df-7411-437b-a942-bcad91e66b1c" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Competition 2</p>
                                        <p class="testimonial-text">A Storytelling Competition</p>
                                    </div>
                                </div>
                            </div> <!-- end of swiper-slide -->
                            <!-- end of slide -->

                            <!-- Slide -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Ftrophy.png?alt=media&token=4f6789df-7411-437b-a942-bcad91e66b1c" alt="alternative">
                                    <div class="card-body">
                                        <p class="testimonial-author">Competition 3</p>
                                        <p class="testimonial-text">Writing Competition</p>
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
                        <h2 class="mu-heading-title">Reviews From Our Users</h2>
                        <span class="mu-header-dot"></span>
                    </div>

                    <div class="mu-testimonials-block">
                        <ul class="mu-testimonial-slide">

                            <li>
                                <p>"My one and only comfort place!"</p>
                                <img class="mu-rt-img" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Ffemale_dp.jpg?alt=media&token=9ea42b0b-a39b-48d0-8db2-a20d3a5ded42" alt="img">
                                <h5 class="mu-rt-name"> - Sheen</h5>
                                <span class="mu-rt-title">Student, BUET</span>
                            </li>

                            <li>
                                <p>"Best site I found on the internet. I don't know how I survived until I discovered it."</p>
                                <img class="mu-rt-img" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fmale_dp.jpg?alt=media&token=579905b0-891d-41c2-9ed7-4b5ead39dee9" alt="img">
                                <h5 class="mu-rt-name"> - Zeeon</h5>
                                <span class="mu-rt-title">Cricketer</span>
                            </li>

                            <li>
                                <p>"I really like the positive vibe here."</p>
                                <img class="mu-rt-img" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Ffemale_dp.jpg?alt=media&token=9ea42b0b-a39b-48d0-8db2-a20d3a5ded42" alt="img">
                                <h5 class="mu-rt-name"> - Bubbles</h5>
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
                    <h3 style="color:#0303c7">Team Monsters Inc.</h3>
                    <h5 style="color:#1f8989">Iftekhar E Mahbub Zeeon</h5>
                    <p>CSE, BUET</p>
                    <h5 style="color:#1f8989">Fabiha Tasneem</h5>
                    <p>CSE, BUET</p>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <div class="image-container">
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fdevelopers.png?alt=media&token=458ed573-61c8-4840-a68b-3bbdf098b039" alt="alternative">
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
