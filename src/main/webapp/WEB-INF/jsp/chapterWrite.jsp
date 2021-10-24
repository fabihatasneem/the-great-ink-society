<%--
  Created by IntelliJ IDEA.
  User: Zeeon
  Date: 7/30/2021
  Time: 3:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="css/writepage/froala_editor.css">
<link rel="stylesheet" href="css/writepage/froala_style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">
<link rel="stylesheet" href="css/reading/main.css">

<style>

</style>
<!-- CSS END -->

<!-- Start post-content Area -->
<br><br>
<section class="post-content-area single-post-area">
    <div class="container">
        <div class="row">
            <div class="text-center" style="padding-bottom: 20px;">
                <h2 id="bookName"></h2>
                <h4 id="chapterNumber">Chapter: 01</h4>
            </div>
            <div class="col-lg-9">
                <div id="editor">
                    <form action="<%=GlobalVariable.localUrl%>/uploadChapter" method="POST">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="chapterName">Chapter Name</label>
                                <input name="chapterName" type="text" class="form-control" id="chapterName" placeholder="Chapter Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea id="description" name="description" class="form-control" placeholder="Description"></textarea>
                            <input type="hidden" id="bookId" value="${bookId}" name="bookId">
                        </div>

                        <textarea id="chapterWriting" class="form-control" name="chapterWriting" style="margin-top: 30px;" placeholder="Type some text"></textarea>
                        <br>
                        <div style="justify-content: flex-end;" class="form-row">
                            <button type="submit" name="publishedStatus" value="0" class="btn btn-warning">Save to Draft</button>&nbsp;
                            <button type="submit" name="publishedStatus" value="1" class="btn btn-primary">Publish</button>&nbsp;
                            <button type="submit" name="publishedStatus" value="2" class="btn btn-danger">Cancel</button>
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
<!-- End post-content Area -->

<!-- start footer Area -->
<%@ include file="footer.jsp" %>
<!-- End footer Area -->


<script>

    $(document).ready(function () {

        let bookId = $("#bookId").val();

        $.post("<%=GlobalVariable.localUrl%>/getBookName", {bookId: bookId}, function(result){
            console.log(result);
            $("#bookName").html(result);
        });
    });

    function demo() {

        var chapterName = $("#chaptername").val();
        var desc = $("#description").val();

        let chapterWriting = document.getElementById("chapterWriting").value;
        // chapterWriting = chapterWriting.replace(/\n\r?/g, '<br />');


        $.post("<%=GlobalVariable.localUrl%>/uploadChapter", {chapterName: chapterName, description: desc, chapterWriting: chapterWriting}, function(result){
            console.log(result);
        });
    }
</script>
</body>

</html>
