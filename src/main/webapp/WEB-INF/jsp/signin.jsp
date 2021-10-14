<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,400i,600,700,700i&amp;subset=latin-ext">
<link  rel="stylesheet" href="css/login-register/style.css">
<div class="main">

    <!-- Sign in  Form -->
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure><img src="images/login.png" alt="sing up image"></figure>
                    <a href="<%=GlobalVariable.localUrl%>/signup" class="signup-image-link">Create an account</a>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Sign In</h2>
                    <h6 style="color: red">${message}</h6>
                    <h6 style="color: green">${message}</h6>
                    <form action="<%=GlobalVariable.localUrl%>/signInSubmit" method="POST" class="register-form" id="login-form">
                        <div class="form-group">
                            <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="username" id="username" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="password" id="your_pass" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term">
                            <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember
                                me</label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>

<!-- JS -->
<script type="text/javascript" async="" src="js/global/analytics.js"></script>
<script src="js/global/jquery.min.js"></script>
<script src="js/global/main.js"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer="" src="js/global/beacon.min.js"
        data-cf-beacon="{&quot;version&quot;:&quot;2021.4.0&quot;,&quot;rayId&quot;:&quot;649b8ccb6844f440&quot;,&quot;si&quot;:10}"></script>

</body>

</html>