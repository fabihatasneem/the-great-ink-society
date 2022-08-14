<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/20/2021
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/event/style.css"/>

<link rel="stylesheet" href="css/genre/nice-select.css"/>

<link rel="stylesheet" href="css/reading/main.css">

<section class="banner-area relative">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white" style="margin-bottom: 80px;">
                    Events
                </h1>
            </div>
        </div>
    </div>
</section>
<!-- Banner Ends -->

<!--Event Starts-->
<div class="container">
    <div class="row">
        <h1>Upcoming Events</h1>
    </div>
    <hr>
    <div class="row">
        <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
            <div class="text">
                <h3 class="font-weight-medium" style="font-size: 1.3rem;">
                    <a href="single-post.html">Event Name</a>
                </h3>
                <hr>
                <div class="text-white mb-3">
                        <span style="font-size: 95%;" class="text-black-opacity-05">
                            <small>
                                <i class="fas fa-clock"></i> Submission Deadline: 10 March
                                <br>
                                <i class="fas fa-book-open"></i> Type: Book
                                <br>
                                <i class="fas fa-hourglass"></i> Creation Time: 2021
                                <br>
                                <i class="fas fa-pen"></i> Genre: Thriller
                            </small>
                        </span>
                </div>
                <hr>
                <p class="mb-4">
                    With the idea of imparting programming
                    knowledge, Mr. Sandeep Jain, an IIT
                    Roorkee alumnus started a dream,
                    GeeksforGeeks. Whether programming
                    excites you or you feel stifled,
                    how to ace data structures and
                    algorithms, GeeksforGeeks is a
                    one-stop solution.
                </p>
                <div class="btn btn-primary">Participate</div>
            </div>
            <div class="image" style="background-image: url('/images/competition1.jpg')"></div>
        </div>
        <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
            <div class="text">
                <h3 class="font-weight-medium" style="font-size: 1.3rem;">
                    <a href="single-post.html">Event Name</a>
                </h3>
                <hr>
                <div class="text-white mb-3">
                        <span style="font-size: 95%;" class="text-black-opacity-05">
                            <small>
                                <i class="fas fa-clock"></i> Submission Deadline: 10 March
                                <br>
                                <i class="fas fa-music"></i> Type: Podcast
                                <br>
                                <i class="fas fa-hourglass"></i> Creation Time: 2021
                                <br>
                                <i class="fas fa-pen"></i> Genre: Thriller
                            </small>
                        </span>
                </div>
                <hr>
                <p class="mb-4">
                    With the idea of imparting programming
                    knowledge, Mr. Sandeep Jain, an IIT
                    Roorkee alumnus started a dream,
                    GeeksforGeeks. Whether programming
                    excites you or you feel stifled,
                    how to ace data structures and
                    algorithms, GeeksforGeeks is a
                    one-stop solution.
                </p>
                <div class="btn btn-primary">Participate</div>
            </div>
            <div class="image" style="background-image: url('images/competition2.jpg')"></div>
        </div>
    </div>

    <!--Upcoming Event Ends-->

    <!--Past Events Start-->
    <div class="row">
        <div class="row">
            <h1>Past Events</h1>
        </div>
        <hr>
        <div id="pastEvents">
        </div>
    </div>
    <!--Past Events End-->
</div>

<!-- Scripts Start -->


<%@ include file="footer.jsp" %>

<script>
    $(document).ready(function () {
        let username = '<%=session.getAttribute("username")%>';
        let userId = '<%=session.getAttribute("userId")%>';
        $.get("<%=GlobalVariable.localUrl%>/getPastEvents", {}, function (result) {
            let design = '<div class="row">';
            console.log(result);
            for (var i = 0; i < result.length; i++) {
                console.log(result);
                design += '<div class="col-md-6">' +
                    ' <div class="product-item" style="background-color:white;">' +
                    '<a href="#"><img src="images/genre/banner1.jpg" alt="" /></a>' +
                    '<div class="down-content">' +
                    '<h3>' + result[i].competitionName + '</h3>' +
                    '<hr>' +
                    '<span style="font-size: 95%;">';
                // if (result2 != null) {
                //     if (result2[0] != null) {
                //         design += '<i class="fas fa-award" style="color:goldenrod;"></i> ' + result2[0].rankName + ': ' + result2[0].winnerUserId +
                //             '<br>';
                //     }
                //     if (result2[1] != null) {
                //         design += '<i class="fas fa-award" style="color:silver"></i> First Runner\'s Up: ' + result2[1].rankName +
                //             '<br>';
                //     }
                //     if (result2[2] != null) {
                //         design += ' <i class="fas fa-award" style="color:chocolate;"></i> Second Runner\'s Up: ' + result2[2].rankName +
                //             ' <br>';
                //     }
                // }
                design += ' <i class="fas fa-calendar"></i> Event Held On: ' + result[i].entryDate +
                    '</span>' +
                    '</div>' +
                    '</div>' +
                    '</div>';
                if (i % 2 != 0) {
                    design += '</div><div class="row">';
                } else if (i == result.length - 1) {
                    design += '</div>';
                }
            }
            document.getElementById('pastEvents').innerHTML += design;
        });
    });
</script>
<!-- Scripts End -->
</body>

</html>
