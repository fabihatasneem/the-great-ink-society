<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<link href="css/login-register/style.css" rel="stylesheet">
<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signin-image">
                    <figure><img src="images/login.png" alt="log in image"></figure>
                    <a href="<%=GlobalVariable.localUrl%>/signIn" class="signup-image-link">Log In</a>
                </div>
                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                    <form action="<%=GlobalVariable.localUrl%>/signUpSubmit" method="POST" enctype="utf8" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <input type="email" name="email" id="email" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="username" id="username" placeholder="Username" required>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="gender" name="gender" required>
                                <option value="" selected disabled hidden>Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="pass" id="pass" placeholder="Password" required>
                        </div>
                        <div class="form-group">
                            <label><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" required="">
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required="">
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree to all the
                                statements in <a href="terms-conditions.html" class="term-service">Terms of service</a>
                            </label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Register">
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="images/register.png" alt="sign up image"></figure>
                    <a href="<%=GlobalVariable.localUrl%>/sign_in" class="signup-image-link">I am already member</a>
                </div>
            </div>
        </div>
    </section>

</div>

<!-- JS -->
<%@ include file="footer.jsp" %>

<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');

    function validateEmail(email) {
        const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }

    function validate() {
        const $result = $("#result");
        const email = $("#email").val();
        $result.text("");

        if (validateEmail(email)) {
            $result.text(email + " is valid :)");
            $result.css("color", "green");
        } else {
            $result.text(email + " is not valid :(");
            $result.css("color", "red");
        }
        return false;
    }

    $("#email").on("input", validate);

</script>
<script defer="" src="js/global/beacon.min.js" ></script>

</body >

</html >