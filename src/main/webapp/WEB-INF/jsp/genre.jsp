<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/writing-podcast/style.css" />

<link rel="stylesheet" href="css/genre/style.css" />
<link rel="stylesheet" href="css/genre/main.css" />

<div style="background-color: #111;">
    <div class="top-category-widget-area pt-90 pb-90">
        <div class="container text-center">
            <h1 class="font-weight-medium" style="padding-top: 80px; margin-bottom: 35px; color: azure;">Genre</h1>
            <div class="row mx-auto my-auto">
                <div class="row" style="padding: 30px">
                    ${genreDesign}
                </div>
            </div>
        </div>
    </div>
</div>
<br />
<!-- Genre End -->

<!-- BookList Starts -->

<div class="wrapper" id="wrapper" style="display: none;">
    <div class="content py-md-0 py-3">
        <section>
            <label class="toggleSwitch nolabel" onclick="">
                <input type="checkbox" checked />
                <a></a>
                <span>
                        <span class="left-span" style="text-align: center;">Books</span>
                        <span class="right-span" style="text-align: center;">Podcasts</span>
                    </span>
            </label>
            <br />
        </section>
        <section>
            <h1>From This Genre</h1>
            <br />
        </section>
        <section id="sidebar">
            <div class="py-3">
                <div class="sorting-selection">
                    <span>Sort By:</span>
                    <select class="form-control nice-select sort-select mr-0" style="display: none;">
                        <option value="" selected="selected">Default Sorting</option>
                        <option value="">Sort By:Name (A - Z)</option>
                        <option value="">Sort By:Name (Z - A)</option>
                        <option value="">Sort By:Rating (Highest)</option>
                        <option value="">Sort By:Rating (Lowest)</option>
                    </select>
                    <div class="nice-select form-control sort-select mr-0" tabindex="0">
                        <span class="current">Default Sorting</span>
                        <ul class="list">
                            <li data-value="" class="option selected">Default Sorting</li>
                            <li data-value="" class="option">Sort By:Name (A - Z)</li>
                            <li data-value="" class="option">Sort By:Name (Z - A)</li>
                            <li data-value="" class="option">Sort By:Rating (Highest)</li>
                            <li data-value="" class="option">Sort By:Rating (Lowest)</li>
                    </div>
                </div>
            </div>
            <div class="py-3">
                <h5 class="font-weight-bold">Popular Tags</h5>
                <ul class="list-group">
                    <li
                            class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category">
                        thriller <span class="badge badge-primary badge-pill">328</span> </li>
                    <li
                            class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category">
                        mystery <span class="badge badge-primary badge-pill">112</span> </li>
                    <li
                            class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category">
                        adult <span class="badge badge-primary badge-pill">32</span> </li>
                    <li
                            class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category">
                        halloween <span class="badge badge-primary badge-pill">48</span> </li>
                </ul>
            </div>
            <div class="py-3">
                <div class="single-sidebar-widget popular-post-widget">
                    <h4 class="popular-title"><i class="fas fa-book-open"></i> Latest Uploads</h4>
                    <div class="popular-post-list">
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp1.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>Space The Final Frontier</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp2.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>The Amazing Hubble</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp3.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>Astronomy Or Astrology</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp4.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>Asteroids telescope</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                    </div>
                    <span> <a href=""> View More </a> </span>
                </div>
            </div>
            <div class="py-3">
                <div class="single-sidebar-widget popular-post-widget">
                    <h4 class="popular-title"><i class="fas fa-book-open"></i> Most Popular</h4>
                    <div class="popular-post-list">
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp1.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>Space The Final Frontier</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp2.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>The Amazing Hubble</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp3.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>Astronomy Or Astrology</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                        <div class="single-post-list d-flex flex-row align-items-center">
                            <div class="card-body">
                                <img class="img-fluid" src="img/blog/pp4.jpg" alt="" />
                            </div>
                            <div class="details">
                                <a href="blog-single.html">
                                    <h6>Asteroids telescope</h6>
                                </a>
                                <p>
                                    <i class="fas fa-heart" style="color: red"></i> 78 &nbsp;
                                    <i class="fas fa-comments"></i> 87
                                </p>
                            </div>
                        </div>
                    </div>
                    <span> <a href=""> View More </a> </span>
                </div>
            </div>
        </section>

        <!-- Products Section -->
        <section id="products">
            <div class="container py-3">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1">
                        <div class="card"> <img class="card-img-top" src="images/1st-section.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-md-0 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover2.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-0 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover3.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover4.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover5.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover6.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-md-0 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover2.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-0 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover3.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                        <div class="card"> <img class="card-img-top" src="images/genre/cover4.jpg">
                            <div class="card-body">
                                <h6 class="font-weight-bold">Book title</h6>
                                <div class="h6 text-muted rebate"><i class="fas fa-pen-nib"></i> Author</div>
                                <div class="text-black-opacity-05 description">More room to move. With 80GB or 160GB
                                    of storage
                                    and up to 40 hours of
                                    battery life, the new iPod classic lets you enjoy
                                    up to 40,000 songs or.........</div>
                                <div class="d-flex align-items-center product">
                                    <div class="d-flex flex-column">
                                        <div class="text-muted rebate"><i class="fas fa-book-open"></i> 10 </div>
                                        <div class="text-muted rebate"><i class="fas fa-eye"></i> 36K </div>
                                        <div class="text-muted rebate"><i class="fas fa-thumbs-up"></i> 15K </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between pt-4">
                                    <a href="genre.html" class="single-btn">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                    <div class="d-flex flex-column">
                                        <div class="btn btn-primary">Read now</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- BookList Ends -->

                <!-- Pagination Block Starts -->
                <div class="row pt--30">
                    <div class="col-md-12">
                        <div class="pagination-block">
                            <ul class="pagination-btns flex-center">
                                <li><a href="genre.html" class="single-btn prev-btn ">Previous<i
                                        class="zmdi zmdi-chevron-left"></i> </a>
                                </li>
                                <li><a href="genre.html" class="single-btn prev-btn "><i
                                        class="zmdi zmdi-chevron-left"></i>
                                </a>
                                </li>
                                <li class="active"><a href="genre.html" class="single-btn">1</a></li>
                                <li><a href="genre.html" class="single-btn">2</a></li>
                                <li><a href="genre.html" class="single-btn">3</a></li>
                                <li><a href="genre.html" class="single-btn">4</a></li>
                                <li><a href="genre.html" class="single-btn next-btn"><i
                                        class="zmdi zmdi-chevron-right"></i></a>
                                </li>
                                <li><a href="genre.html" class="single-btn next-btn"><i
                                        class="zmdi zmdi-chevron-right"></i>Next</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Pagination Block Ends -->
            </div>
        </section>
    </div>
</div>





<!-- Scripts Start -->
<%@ include file="footer.jsp" %>


<script>

    /*-- Shows All Content After Clicking A Genre

        **********************************************
    ----------------------------------------------------*/

    function showWrapperFunction() {
        document.getElementById('wrapper').style.display = 'block';  // <-- Visibility was "hidden". Set it to "visible".
    }
</script>
<!-- Scripts End -->
</body>

</html>
