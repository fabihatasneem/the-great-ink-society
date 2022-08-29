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

<section class="banner-area relative" style="background-image: url('https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fevents.jpg?alt=media&token=0f8705a0-7794-4187-a290-4e2bb0c47118')">
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
    <hr>
    <div class="row">
        <h1>Upcoming Events</h1>
    </div>
    <hr>
    <div id="upcomingEvents">

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

        $.get("<%=GlobalVariable.localUrl%>/getUpcomingEvents", {}, function (result) {
            let design = '';
            for(var i = 0; i < result.length; i++) {
                var competitionType;
                if(result[i].type == "1"){
                    competitionType = "Books";
                } else{
                    competitionType = "Podcast";
                }
                design += '<div class="row">'+
                    '<div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">' +
                    '<div class="text">' +
                    '<h3 class="font-weight-medium" style="font-size: 1.3rem;">' +
                    '<a href="single-post.html">' + result[i].competitionName + '</a>' +
                    '</h3>' +
                    '<hr>' +
                    '<div class="text-white mb-3">' +
                    '<span style="font-size: 95%;" class="text-black-opacity-05">' +
                    '<small>' +
                    '<i class="fas fa-gear"></i> Type : ' + competitionType +
                    '<br>' +
                    '<i class="fas fa-hourglass"></i> Starts On : ' + result[i].entryDate +
                    '<br>' +
                    '<i class="fas fa-clock"></i> Submission Deadline : ' + result[i].deadlineDate +
                    '<br>' +
                    '</small>' +
                    '</span>' +
                    '</div>' +
                    '<hr>' +
                    '<p class="mb-4">' +
                    '</p>' +
                    '<button class="btn btn-primary" onclick="">Participate</button>' +
                    '</div>' +
                    '<div>' +
                    '<img src="https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fposter.jpg?alt=media&token=81006d31-238a-48c4-9606-687ed39f9e5d">' +
                    '</div>' +
                    '</div>' +
                    '</div>';
            }
            document.getElementById('upcomingEvents').innerHTML += design;
        });

        $.get("<%=GlobalVariable.localUrl%>/getPastEvents", {}, function (result) {
             let design = result;
            document.getElementById('pastEvents').innerHTML += design;
        });
    });
</script>
<!-- Scripts End -->
</body>

</html>
