<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/writing-podcast/style.css" />

<link rel="stylesheet" href="css/genre/style.css" />
<link rel="stylesheet" href="css/genre/main.css" />

<style>

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

<!-- #header -->
<!-- start banner Area -->
<div style="background-color: #111;">
    <div class="top-category-widget-area pt-90 pb-90">
        <div class="container text-center">
            <h1 class="font-weight-medium" style="padding-top: 150px; color: azure;">Search Results</h1>
            <div class="row mx-auto my-auto">
                <div class="row" style="padding: 30px">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Details Modal Start -->
<div class="modal fade" id="detailsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTitle">title</h5>
                <br>
                <h6 style="font-size: small" id="authorName"></h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="modalBody">

            </div>
            <div class="modal-footer" id="modalFooter">
            </div>
        </div>
    </div>
</div>

<!-- Details Modal End -->
<!-- End banner Area -->



<div class="container" style="font-size: x-large; margin-top: 50px">
    <div class="form-check form-check-inline">
        <input onclick="bookChecked(this)" class="form-check-input" type="checkbox" id="checkBoxBook" value="option1">
        <label class="form-check-label" for="checkBoxBook">Books</label>
    </div>
    <div class="form-check form-check-inline">
        <input onclick="podcastChecked(this)" class="form-check-input" type="checkbox" id="checkBoxPodcast" value="option2">
        <label class="form-check-label" for="checkBoxPodcast">Podcasts</label>
    </div>
    <div class="form-check form-check-inline">
        <input onclick="authorChecked(this)" class="form-check-input" type="checkbox" id="checkBoxAuthor" value="option3">
        <label class="form-check-label" for="checkBoxAuthor">Authors</label>
    </div>
</div>

<!-- Searched Books Start -->

<div id="searchedBooks" class="latest-products" style="margin-top: 50px">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>Books</h2>
                </div>
            </div>
            <div class="row" id="searched-book-row">
                ${bookDesign}
            </div>
        </div>
    </div>
</div>

<!-- Searched Books End -->

<!-- Searched Books Start -->

<div id="searchedPodcasts" class="latest-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>Podcast Series</h2>
                </div>
            </div>
            <div class="row" id="searched-podcast-row">
                ${podcastDesign}
            </div>
        </div>
    </div>
</div>

<!-- Searched Books End -->

<%@ include file="footer.jsp" %>

<script>
    let searchedBookDesign;
    let searchedPodcastDesign;
    let searchedBookAuthorDesign;
    let searchedPodcastAuthorDesign;
    let authorCheckedOnce = false;
    let queryWord;

    function bookChecked(e) {
        if (e.checked) {
            if (document.getElementById("checkBoxAuthor").checked) {
                document.getElementById("searchedBooks").innerHTML = searchedBookAuthorDesign;
            } else {
                document.getElementById("searchedBooks").innerHTML = searchedBookDesign;
            }
        } else {
            document.getElementById("searchedBooks").innerHTML = "";
        }
    }
    function podcastChecked(e) {
        if (e.checked) {
            if (document.getElementById("checkBoxPodcast").checked) {
                document.getElementById("searchedPodcasts").innerHTML = searchedPodcastAuthorDesign;
            } else {
                document.getElementById("searchedPodcasts").innerHTML = searchedPodcastDesign;
            }

        } else {
            document.getElementById("searchedPodcasts").innerHTML = "";
        }
    }
    function authorChecked(e) {
        if (e.checked) {
            if (authorCheckedOnce) {
                if (document.getElementById("checkBoxBook").checked) {
                    document.getElementById("searchedBooks").innerHTML = searchedBookAuthorDesign;
                }
                if (document.getElementById("checkBoxPodcast").checked) {
                    document.getElementById("searchedPodcasts").innerHTML = searchedPodcastAuthorDesign;
                }
            } else {
                authorCheckedOnce = true;
                console.log(queryWord);
                $.post("<%=GlobalVariable.localUrl%>/searchAuthorName", {q: queryWord}, function (result) {
                    console.log(result);
                    document.getElementById("searched-book-row").innerHTML = result.books;
                    document.getElementById("searched-podcast-row").innerHTML = result.podcasts;

                    searchedBookAuthorDesign = document.getElementById("searchedBooks").innerHTML;
                    searchedPodcastAuthorDesign = document.getElementById("searchedPodcasts").innerHTML;

                    if (document.getElementById("checkBoxBook").checked) {
                        document.getElementById("searchedBooks").innerHTML = searchedBookAuthorDesign;
                    } else {
                        document.getElementById("searchedBooks").innerHTML = "";
                    }
                    if (document.getElementById("checkBoxPodcast").checked) {
                        document.getElementById("searchedPodcasts").innerHTML = searchedPodcastAuthorDesign;
                    } else {
                        document.getElementById("searchedPodcasts").innerHTML = "";
                    }
                });
            }
        } else {
            if (document.getElementById("checkBoxBook").checked) {
                document.getElementById("searchedBooks").innerHTML = searchedBookDesign;
            }
            if (document.getElementById("checkBoxPodcast").checked) {
                document.getElementById("searchedPodcasts").innerHTML = searchedPodcastDesign;
            }
        }
    }

    $(document).ready(function () {

        searchedBookDesign = document.getElementById("searchedBooks").innerHTML;
        searchedPodcastDesign = document.getElementById("searchedPodcasts").innerHTML;

        document.getElementById("checkBoxBook").checked = true;
        document.getElementById("checkBoxPodcast").checked = true;

        queryWord = '${searchedWord}';
        console.log(document.getElementById("searchedBooks").checked);
    });


    function bookDetails(bookId) {
        location.href = "<%=GlobalVariable.localUrl%>/bookDetails?id=" + bookId;
    }

    function podcastDetails(podcastId) {
        location.href = "<%=GlobalVariable.localUrl%>/podcastDetails?id=" + podcastId;
    }

    function voteBook(userId, bookId) {
        if (userId == null) {
            alert('You need to login first');
            location.href = "<%=GlobalVariable.localUrl%>/signIn";
        } else {
            $.post("<%=GlobalVariable.localUrl%>/likeUnlikeBook", {userId: userId, bookId: bookId}, function (result) {
                console.log(result.status);
                openModal(userId, bookId);
            });
        }

    }

    function openModalBooks(userId, bookId) {
        console.log(bookId);

        $.post("<%=GlobalVariable.localUrl%>/getSingleBookDetails", {bookId: bookId}, function (result) {

            $("#modalTitle").html(result.bookName);
            $("#authorName").html(result.user.fullName);

            let awardCount = 0;
            for (var i = 0; i < result.user.award.length; i++) {
                if (result.user.award[i].winnerBookId == bookId) {
                    awardCount++;
                }
            }

            let modalBodyDesign = '<div class="container">' +
                '<div class="row">' +
                '<div class="col-lg-8">' +
                '<div class="container-fluid">' +
                '<div class="text-center">' +
                '<img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;" src="' + result.coverPhotoLink + '">' +
                '<hr>' +
                '<h4>Description</h4> &nbsp;' +
                '<p class="text-left">' + result.description + '</p>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '<div class="col-lg-4">' +
                '<div class="container extra">' +
                '<div class="row">' +
                '<p><i class="fas fa-book-open"></i> Chapters Published : ' + result.numberOfChapters + '</p> &nbsp;' +
                '<br><br>' +
                '<p><i class="fas fa-language"></i> Language : ' + result.language.languageName + '</p>' +
                '<p><i class="fas fa-theater-masks"></i> Genre : ' + result.genre.name + '</p>' +
                '<p><i class="fas fa-clock"></i> Last Updated : ' + result.lastUpdatedDate + '</p>' +
                '<br><br>' +
                '<p><i class="fas fa-eye"></i> Total Views : ' + result.totalViews + '</p>' +
                '<p><i class="fas fa-comments"></i> Total Comments : ' + result.numberOfComments + '</p>' +
                '<p> <i style="color: #daa520" class="fas fa-trophy"></i> Awards Won : ' + awardCount + '</p>' +
                '<br><br>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>';
            document.getElementById('modalBody').innerHTML = modalBodyDesign;

            let modalFooterDesign = '<div class="text-left">' +
                '<div name="heart" id="heart" class="text-left" style="margin-right: 550px;">' +
                '<i id="voteId" style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true" onclick="voteBook(' + userId + ',' + bookId + ')">&nbsp;' + result.numberOfLikes + '</i>' +
                '</div>' +
                '</div>' +
                '<button type="button" class="btn btn-primary" onclick="bookDetails(' + bookId + ')">View Details</button>' +
                '</div>' +
                '</div>';
            document.getElementById('modalFooter').innerHTML = modalFooterDesign;
        });
    }

    function openModalPodcasts(userId, podcastId) {
        console.log(podcastId);

        $.post("<%=GlobalVariable.localUrl%>/getSinglePodcastDetails", {podcastId: podcastId}, function (result) {
            console.log(result);

            $("#modalTitle").html(result.seriesName);
            $("#authorName").html(result.user.fullName);

            let awardCount = 0;
            for (var i = 0; i < result.user.award.length; i++) {
                if (result.user.award[i].winnerPodcastId == podcastId) {
                    awardCount++;
                }
            }

            let modalBodyDesign = '<div class="container">' +
                '<div class="row">' +
                '<div class="col-lg-8">' +
                '<div class="container-fluid">' +
                '<div class="text-center">' +
                '<img style="max-width: -webkit-fill-available; height: auto; min-width: 300px; max-height: 350px;" src="' + result.coverPhotoLink + '">' +
                '<hr>' +
                '<h4>Description</h4> &nbsp;' +
                '<p class="text-left">' + result.description + '</p>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '<div class="col-lg-4">' +
                '<div class="container extra">' +
                '<div class="row">' +
                '<p><i class="fas fa-book-open"></i> Episodes Published : ' + result.numberOfEpisodes + '</p> &nbsp;' +
                '<br><br>' +
                '<p><i class="fas fa-language"></i> Language : ' + result.language.languageName + '</p>' +
                '<p><i class="fas fa-theater-masks"></i> Genre : ' + result.genre.name + '</p>' +
                '<p><i class="fas fa-clock"></i> Last Updated : ' + result.lastUpdatedDate + '</p>' +
                '<br><br>' +
                '<p><i class="fas fa-eye"></i> Total Views : ' + result.totalViews + '</p>' +
                '<p><i class="fas fa-comments"></i> Total Comments : ' + result.numberOfComments + '</p>' +
                '<p> <i style="color: #daa520" class="fas fa-trophy"></i> Awards Won : ' + awardCount + '</p>' +
                '<br><br>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>';
            document.getElementById('modalBody').innerHTML = modalBodyDesign;

            let modalFooterDesign = '<div class="text-left">' +
                '<div name="heart" id="heart" class="text-left" style="margin-right: 550px;">' +
                '<i id="voteId" style="font-size: 25px;" class="fa fa-heart-o" aria-hidden="true" onclick="votePodcast(' + userId + ',' + podcastId + ')">&nbsp;' + result.numberOfLikes + '</i>' +
                '</div>' +
                '</div>' +
                '<button type="button" class="btn btn-primary" onclick="podcastDetails(' + podcastId + ')">View Details</button>' +
                '</div>' +
                '</div>';
            document.getElementById('modalFooter').innerHTML = modalFooterDesign;
        });
    }

</script>

</body>

</html>