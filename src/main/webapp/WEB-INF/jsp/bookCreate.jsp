<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:33 AM
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
                    New Book(A fancy heading for a new story or something)
                </h1>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- Modal Start -->
<div style="opacity: 0.9; background-color: #ea6161 !important;" class="modal fade bg-white" id="templatemo_search"
     tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="w-100 pt-1 mb-5 text-right">
            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="" method="get" class="modal-content modal-body border-0 p-0">
            <div class="input-group mb-2">
                <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                <button type="submit" class="input-group-text bg-success text-light">
                    <i class="fa fa-fw fa-search text-white"></i>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- Modal End -->

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
                            <a class="nav-link" role="tab" data-toggle="tab" href="#new">New Book</a>
                        </li>
                        <li class="cycle-tab-item">
                            <a class="nav-link" role="tab" data-toggle="tab" href="#existing">Add a Chapter to a Book</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">
                            <div class="container">
                                <form id="bookSubmitForm" action="<%=GlobalVariable.localUrl%>/submitBook" method="POST" enctype="multipart/form-data">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="bookname">Book Name</label>
                                            <input name="bookName" type="text" class="form-control" id="bookname"
                                                   placeholder="Book Name" required>
                                        </div>
                                        <div class="custom-file col-md-6">
                                            <label for="bookCover">Book Cover Photo(.jpg/.png)</label>
                                            <input type="file" class="form-control" id="bookCover">
                                            <input id="bookCoverFileName" name="bookCover" type="hidden" value="">
                                            <progress id="uploader" value="0" max="100">0%</progress>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea name="description" id="description" class="form-control" placeholder="Description" required></textarea>
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
                                        <button onclick="validateForm(1)" type="button" name="publishedStatus" value="1" class="btn btn-primary">Start Writing</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="existing" role="tabpanel" aria-labelledby="existing-tab">
                            <div class="container">
                                <h3 style="padding: 20px;">Published</h3>
                                <div id="publishedBooks" class="row people" style="row-gap: 30px;">

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
                        <div id="myDraftBooks" class="popular-post-list">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>

<script>

    let file;
    const uploader = document.getElementById('uploader');
    const fileButton = document.getElementById('bookCover');

    $(document).ready(function () {
        $.post("<%=GlobalVariable.localUrl%>/getLanguage", {}, function(result){
            console.log(result);
            let design = '';
            for (let i = 0; i < result.length; i++) {
                design += '<option value = "' + result[i].id + '" > ' + result[i].languageName + '</option>'
            }
            console.log(design);
            $("#language").append(design);
        });

        $.post("<%=GlobalVariable.localUrl%>/getGenre", {}, function(result){
            console.log(result);
            let design = '';
            for (let i = 0; i < result.length; i++) {
                design += '<option value = "' + result[i].id + '" > ' + result[i].name + '</option>'
            }
            console.log(design);
            $("#genre").append(design);
        });
        let username = '${username}';

        $.post("<%=GlobalVariable.localUrl%>/getMyBooksInfo", {username: username}, function (result) {
           console.log(result);
           let publishedBookDesign = '';
           let draftBookDesign = '';
           result.map(book => {
                if (book.publishStatus === 1) {
                    publishedBookDesign += '<div class="col-md-12 col-lg-3 item">' +
                                            '<a href="<%=GlobalVariable.localUrl%>/bookDetailsUser?id=' + book.id + '"> <div class="box">' +
                                                '<img style="max-width: 140px;" class="img-thumbnail" src="' + book.coverPhotoLink + '">' +
                                                '<h5 style="padding-top: 10px;" class="name">' + book.bookName + '</h5>' +
                                                '<p style="margin-bottom: auto;">Chapters: ' + book.numberOfChapters + '</p>' +
                                                '<small><i style="color: red;" class="fas fa-heart"></i> ' + book.numberOfLikes + ' &nbsp; <i class="fas fa-eye"></i> ' + book.totalViews + '</small>' +
                                            '</div> </a>' +
                                            '</div>';
                } else {
                    draftBookDesign += '<div class="col-md-12 col-lg-3 item">' +
                        '<a href="<%=GlobalVariable.localUrl%>/bookDetailsUser?id=' + book.id + '"> <div class="box">' +
                        '<img style="max-width: 140px;" class="img-thumbnail" src="' + book.coverPhotoLink + '">' +
                        '<h5 style="padding-top: 10px;" class="name">' + book.bookName + '</h5>' +
                        '<p style="margin-bottom: auto;">Chapters: ' + book.numberOfChapters + '</p>' +
                        '</div> </a>' +
                        '</div>';
                }
           });

           document.getElementById('publishedBooks').innerHTML = publishedBookDesign;
           document.getElementById('draftBooks').innerHTML = draftBookDesign;

        });

        $.post("<%=GlobalVariable.localUrl%>/getMyDraftBooks", {userId: ${userId}}, function (result) {
            console.log(result);

            let draftBookDesign = '';

            result.map( book => {
                draftBookDesign += '<div class="single-post-list d-flex flex-row align-items-center">' +
                    ' <div class="thumb">' +
                    '<img class="img-fluid" src="' + book.coverPhotoLink + '" alt="">' +
                    '</div>' +
                    '<div class="details">' +
                    '<a href="<%=GlobalVariable.localUrl%>/bookDetailsUser?id=' + book.id + '">' +
                    '<h6>' + book.bookName + '</h6>' +
                    '</a>' +
                    ' </div>' +
                    '</div>';
            });

            document.getElementById('myDraftBooks').innerHTML = draftBookDesign;
        });
    });

    fileButton.addEventListener('change', function(e) {
        console.log("here");
        file = e.target.files[0];
    });

    function validateForm(status) {
        $("#publishedStatus").val(status);
        console.log($("#genre").val(), '-', $("#language").val(), '-', $("#bookname").val(), '-', $("#description").val());

        if ($("#genre").val() === null || $("#language").val() === null ||
            $("#bookname").val() === '' || $("#description").val() === '') {
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
                fileName = 'noBookCover.jpg';

                const storageRef = firebase.storage().ref('bookCover/' + fileName);

                storageRef.getDownloadURL()
                    .then((downloadURL) => {
                        // `url` is the download URL for 'images/stars.jpg'

                        $("#bookCoverFileName").val(downloadURL);
                        document.getElementById("bookSubmitForm").submit();

                    })
                    .catch((error) => {
                        console.log(error);
                    });
            } else {

                const storageRef = firebase.storage().ref('bookCover/' + file.name);
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

                            $("#bookCoverFileName").val(downloadURL);
                            document.getElementById("bookSubmitForm").submit();
                        });
                });
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
