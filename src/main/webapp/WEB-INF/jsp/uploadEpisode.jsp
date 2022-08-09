<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/writepage/froala_editor.css" />
<link rel="stylesheet" href="css/writepage/froala_style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css" />
<link rel="stylesheet" href="css/reading/main.css" />

<style></style>
<!-- CSS END -->

<!-- Start post-content Area -->
<br /><br />
<section class="post-content-area single-post-area">
    <div class="container">
        <div class="row">
            <div class="text-center" style="padding-bottom: 20px;">
                <h2 id="podcastName"></h2>
                <h4 id="episoderNumber">Episode : 01</h4>
            </div>
            <div class="col-lg-9">
                <div id="editor">
                    <form id="episodeSubmitForm" action="<%=GlobalVariable.localUrl%>/episodeSubmit"  method="POST" enctype="multipart/form-data" class="podcastEpisode-form" id="podcastEpisode-form">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="episodename">Episode Name</label>
                                <input type="hidden" id="podcastId" value="${podcastId}" name="podcastId">
                                <input type="text" class="form-control" id="episodename" name="episodeName" placeholder="Episode Name" required/>
                            </div>
                            <div class="custom-file">
                                <label for="episodeFile">Audio File(.mp4/.wav)</label>
                                <input type="file" class="form-control" id="episodeFile" name="episodeFile" required/>
                                <input id="episodeFileName" name="episodeFileName" type="hidden" value="">
                                <progress id="uploader" value="0" max="100">0%</progress>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div style="justify-content: flex-end" class="form-row">
                            <input type="hidden" name="publishedStatus" id="publishedStatus" value="" >
                            <button onclick="validateForm(0)" type="button" name="publishedStatus" value="0" class="btn btn-warning">Save to Draft</button>&nbsp;
                            <button onclick="validateForm(0)" type="button" name="publishedStatus" value="1" class="btn btn-primary">Publish</button>&nbsp;
                            <button onclick="validateForm(0)" type="button" name="publishedStatus" value="2" class="btn btn-danger">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget-wrap">
                    <div class="single-sidebar-widget popular-post-widget">
                        <h4 class="popular-title">My Drafts</h4>
                        <div class="popular-post-list">
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp1.jpg" alt="" />
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Space The Final Frontier</h6>
                                    </a>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp2.jpg" alt="" />
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>The Amazing Hubble</h6>
                                    </a>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp3.jpg" alt="" />
                                </div>
                                <div class="details">
                                    <a href="blog-single.html">
                                        <h6>Astronomy Or Astrology</h6>
                                    </a>
                                </div>
                            </div>
                            <div class="single-post-list d-flex flex-row align-items-center">
                                <div class="thumb">
                                    <img class="img-fluid" src="img/blog/pp4.jpg" alt="" />
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
<!-- End post-content Area -->

<!-- start footer Area -->
<%@ include file="footer.jsp" %>
<!-- End footer Area -->

<script>

    let file;
    const uploader = document.getElementById('uploader');
    const fileButton = document.getElementById('episodeFile');

    $(document).ready(function () {
        podcastId = $("#podcastId").val();
        $.post("<%=GlobalVariable.localUrl%>/getPodcastName", {podcastId : podcastId}, function(result){
            console.log(result);
            $("#podcastName").html(result);
        });
    });

    fileButton.addEventListener('change', function(e) {
        console.log("here");
        file = e.target.files[0];
    });

    function validateForm(status) {
        $("#publishedStatus").val(status);
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

        const storageRef = firebase.storage().ref('episodes/' + file.name);
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

                    $("#episodeFileName").val(downloadURL);
                    document.getElementById("episodeSubmitForm").submit();
                });
        });
    }

    (function () {
        const editorInstance = new FroalaEditor("#edit", {
            enter: FroalaEditor.ENTER_P,
            placeholderText: null,
            events: {
                initialized: function () {
                    const editor = this;
                    this.el.closest("form").addEventListener("submit", function (e) {
                        console.log(editor.$oel.val());
                        e.preventDefault();
                    });
                },
            },
        });
    })();
</script>
</body>

</html>