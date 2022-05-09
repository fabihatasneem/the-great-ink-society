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
    .txta {
        width: 100%;
        min-height: 100px;
        font-family: Arial, sans-serif;
        font-size: 16px;
        overflow: hidden;
        line-height: 1.4;
    }
</style>
<!-- CSS END -->

<!-- Start post-content Area -->
<br><br>
<section class="post-content-area single-post-area">
    <div class="container">
        <div class="row">
            <div class="text-center" style="padding-bottom: 20px;">
                <h2 id="bookName"></h2>
                <h4 id="chapterNumber">Chapter: <%=request.getParameter("chapterNo")%></h4>
            </div>
            <div class="col-lg-9">
                <div id="editor">
                    <form action="<%=GlobalVariable.localUrl%>/uploadChapter" method="POST">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="chapterName">Chapter Name</label>
                                <input name="chapterName" type="text" class="form-control" id="chapterName" value="${chapterName}" placeholder="Chapter Name" required>
                            </div>
                        </div>

                        <input type="hidden" id="bookId" value="${bookId}" name="bookId">
                        <input type="hidden" id="chapterId" value="${chapterId}" name="chapterId">

                        <textarea required id="chapterWriting" class="form-control txta" name="chapterWriting" style="margin-top: 30px;" placeholder="Type some text">${paragraph}</textarea>
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

    // Targets all textareas with class "txta"
    let textareas = document.querySelectorAll('.txta'),
        hiddenDiv = document.createElement('div'),
        content = null;

    // Adds a class to all textareas
    for (let j of textareas) {
        j.classList.add('txtstuff');
    }

    // Build the hidden div's attributes

    // The line below is needed if you move the style lines to CSS
    // hiddenDiv.classList.add('hiddendiv');

    // Add the "txta" styles, which are common to both textarea and hiddendiv
    // If you want, you can remove those from CSS and add them via JS
    hiddenDiv.classList.add('txta');

    // Add the styles for the hidden div
    // These can be in the CSS, just remove these three lines and uncomment the CSS
    hiddenDiv.style.display = 'none';
    hiddenDiv.style.whiteSpace = 'pre-wrap';
    hiddenDiv.style.wordWrap = 'break-word';

    // Loop through all the textareas and add the event listener
    for(let i of textareas) {
        (function(i) {
            // Note: Use 'keyup' instead of 'input'
            // if you want older IE support
            i.addEventListener('input', function() {

                // Append hiddendiv to parent of textarea, so the size is correct
                i.parentNode.appendChild(hiddenDiv);

                // Remove this if you want the user to be able to resize it in modern browsers
                i.style.resize = 'none';

                // This removes scrollbars
                i.style.overflow = 'hidden';

                // Every input/change, grab the content
                content = i.value;

                // Add the same content to the hidden div

                // This is for old IE
                content = content.replace(/\n/g, '<br>');

                // The <br ..> part is for old IE
                // This also fixes the jumpy way the textarea grows if line-height isn't included
                hiddenDiv.innerHTML = content + '<br style="line-height: 3px;">';

                // Briefly make the hidden div block but invisible
                // This is in order to read the height
                hiddenDiv.style.visibility = 'hidden';
                hiddenDiv.style.display = 'block';
                i.style.height = hiddenDiv.offsetHeight + 'px';

                // Make the hidden div display:none again
                hiddenDiv.style.visibility = 'visible';
                hiddenDiv.style.display = 'none';
            });
        })(i);
    }
</script>
</body>

</html>
