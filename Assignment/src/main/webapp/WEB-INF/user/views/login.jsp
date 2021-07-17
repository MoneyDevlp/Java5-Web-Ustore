
	<section class="sign-in">
            <div class="container ct">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img class="td" src="/img/signin-image.jpg" alt="sing up image"></figure>
                        <a href="${pageContext.request.contextPath}/user/customers/add" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                    <p class="m"><b><i>${message}${param.error}</i></b></p>
                        <h2 class="form-title h">Sign in</h2>
                        <form method="post" action="/loginUser"  class="register-form" id="login-form">
                            <div class="form-group">
                                <!-- <label style="padding-left: 10px" for="your_name"><i class="fas fa-user"></i></label> -->
                                <!-- <form:input path="username" /> -->
                                 <input type="text" name="name" placeholder="Your Name"/> 
                            </div>
                            <div class="form-group">
                                <!-- <label style="padding-left: 10px" for="your_pass"><i class="fas fa-lock"></i></label> -->
                                <!-- <form:input path="password" /> -->
                                 <input type="password" name="password" placeholder="Password"/> 
                            </div>
                            
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><i class="fab fa-facebook-square"></i></li>
                                <li><i class="fab fa-twitter-square"></i></li>
                                <li><i class="fab fa-google-plus-square"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
