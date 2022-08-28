<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

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


  img {
    border-radius: 5px 5px 0 0;
  }

</style>
<!-- CSS END -->

<!-- start banner Area -->
<section class="banner-area relative" id="home"  style="background-image: url('https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwhite-headphones-on-wooden-table-with-nature-background-free-photo.jpg?alt=media&token=5c1c5634-e5e6-43f1-95e6-049967d1675c')">
    <div class="overlay overlay-bg" style="opacity: 40%"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h2 class="text-white">
                    Let your stories be told. Let your imaginations be heard.
                </h2>
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
                    <h2>Instructions</h2>
                    <p>You don’t need to be an established content creator or have a blog to become a successful podcaster.
                        A podcast is an excellent way to build an audience from scratch and position yourself as an authority in your industry.
                        Podcasts are a popular content platform because they’re easy to consume. People can listen to podcasts on the go, in the car, at the gym, and even at work.
                        One of the best things about podcasting is the intimate connection you build with your audience. These listeners will spend 30 minutes or more with you at any given time. In this day and age, where social media has shrunk attention spans, that amount of attention is pretty rare giving you the ability to dive deep into topics. The first thing you need to do to start your podcast is identify a theme. Choose something you’re passionate about. Your passion will be your greatest motivator to keep you disciplined when things get difficult. Episode length depends on how long you need to give your audience value, but not longer. Consistency, not volume, is the key. No one wants to subscribe to a podcast that is unpredictable. Choose a publishing schedule that will be easy to maintain. You can always scale up later.</p>
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
                                <form id="podcastSubmitForm" action="<%=GlobalVariable.localUrl%>/podcastSubmit" method="POST" enctype="multipart/form-data" class="podcastCreate-form" id="podcastCreate-form">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="podcastname">Podcast Name</label>
                                            <input type="text" class="form-control" id="podcastname" name="podcastname"
                                                   placeholder="Podcast Name" required>
                                        </div>
                                        <div class="custom-file col-md-6">
                                            <label for="podcastCover">Podcast Cover Photo(.jpg/.png)</label>
                                            <input type="file" class="form-control" id="podcastCover" name="podcastCover">
                                            <input id="podcastCoverFileName" name="podcastCoverFile" type="hidden" value="">
                                            <progress id="uploader" value="0" max="100">0%</progress>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea name="description" id="description" class="form-control" placeholder="Description"></textarea>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="language">Langugage</label>
                                            <select name="language" id="language" class="form-control" required>
                                                <option disabled hidden selected>Choose...</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="genre">Genre</label>
                                            <select name="genre" id="genre" class="form-control" required>
                                                <option value="" disabled selected hidden>Choose...</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="justify-content: flex-end;" class="form-row">
                                        <input type="hidden" name="publishedStatus" id="publishedStatus" value="" >
                                        <button onclick="validateForm(0)" type="button" name="publishedStatus" value="0" class="btn btn-warning">Save to Draft</button>&nbsp;
                                        <button onclick="validateForm(1)" type="button" name="publishedStatus" value="1" class="btn btn-primary">Publish</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="existing" role="tabpanel" aria-labelledby="existing-tab">
                            <div class="container">
                                <h3 style="padding: 20px;">Published</h3>
                                <div id="publishedPodcasts" class="row people" style="row-gap: 30px;">

                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">

            </div>
        </div>
    </div>
</section>


<%@ include file="footer.jsp" %>


<script>
    let file;
    let fileExtension;
    const uploader = document.getElementById('uploader');
    const fileButton = document.getElementById('podcastCover');

    $(document).ready(function () {
        let username = '${username}';

        $.post("<%=GlobalVariable.localUrl%>/getLanguage", {}, function(result) {
            console.log(result);
            let design = '';
            for (let i = 0; i < result.length; i++) {
                design += '<option value = "' + result[i].id + '" > ' + result[i].languageName + '</option>'
            }
            console.log(design);
            $("#language").append(design);
        });

        $.post("<%=GlobalVariable.localUrl%>/getGenre", {}, function(result) {
            console.log(result);
            let design = '';
            for (let i = 0; i < result.length; i++) {
                design += '<option value = "' + result[i].id + '" > ' + result[i].name + '</option>'
            }
            console.log(design);
            $("#genre").append(design);
        });

        $.post("<%=GlobalVariable.localUrl%>/getMyPodcastsInfo", {username: username}, function (result) {
            console.log(result);
            let publishedPodcastDesign = '';
            result.map(podcast => {
                if (podcast.publishStatus === 1) {
                    publishedPodcastDesign += '<div class="col-md-12 col-lg-3 item">' +
                        '<a href="<%=GlobalVariable.localUrl%>/podcastDetailsUser?id=' + podcast.id + '"> <div class="box">' +
                        '<img style="max-width: 140px;" class="img-thumbnail" src="' + podcast.coverPhotoLink + '">' +
                        '<h5 style="padding-top: 10px;" class="name">' + podcast.seriesName + '</h5>' +
                        '<p style="margin-bottom: auto;">Episodes: ' + podcast.numberOfEpisodes + '</p>' +
                        '<small><i style="color: red;" class="fas fa-heart"></i> ' + podcast.numberOfLikes + ' &nbsp; <i class="fas fa-eye"></i> ' + podcast.totalViews + '</small>' +
                        '</div> </a>' +
                        '</div>';
                }
            });

            document.getElementById('publishedPodcasts').innerHTML = publishedPodcastDesign;

        });
    });

    fileButton.addEventListener('change', function(e) {
        console.log("here");
        file = e.target.files[0];
    });

    function validateForm(status) {
        $("#publishedStatus").val(status);
        if ($("#genre").val() === null || $("#language").val() === null ||
            $("#podcastName").val() === '' || $("#description").val() === '') {
            alert("Invalid input");
        } else {
            const firebaseConfig = {
                apiKey: "${FIREBASE_API_KEY}",
                authDomain: "${FIREBASE_AUTH_DOMAIN}",
                projectId: "${FIREBASE_PROJECT_ID}",
                storageBucket: "${FIREBASE_STORAGE_BUCKET}",
                messagingSenderId: "${FIREBASE_MESSAGING_SENDER_ID}",
                appId: "${FIREBASE_APP_ID}",
                measurementId: "${FIREBASE_MEASUREMENT_ID}"
            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
            console.log("firebase initialized.");

            let fileName = '';

            if (file === undefined) {
                fileName = 'noPodcastCover.jpg';
                const storageRef = firebase.storage().ref('podcastCover/' + fileName);

                storageRef.getDownloadURL()
                    .then((downloadURL) => {

                        $("#podcastCoverFileName").val(downloadURL);
                        document.getElementById("podcastSubmitForm").submit();

                    })
                    .catch((error) => {
                        console.log(error);
                    });
            } else {
                fileExtension = file.name.split('.').pop();
                if (fileExtension === 'jpg' || fileExtension === 'png' || fileExtension === 'jpeg') {
                    const storageRef = firebase.storage().ref('podcastCover/' + file.name);
                    const task = storageRef.put(file);
                    task.on('state_changed', function progress(snapshot) {
                        uploader.value = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;

                    }, function error(err) {
                        console.log(err);
                    }, function complete() {
                        // get the uploaded image url back
                        task.snapshot.ref.getDownloadURL().then(
                            function (downloadURL) {
                                // You get your url from here
                                console.log('File uploaded');

                                $("#podcastCoverFileName").val(downloadURL);
                                document.getElementById("podcastSubmitForm").submit();
                            });
                    });
                } else {
                    alert('Invalid image format');
                }
            }
        }
    }

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