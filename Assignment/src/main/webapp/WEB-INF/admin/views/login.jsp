
        <section class="row">
            <div class="col offset mt-5">
                <form method="post" action="loginAdmin" >
                    <div class="card">
                        <div class="card-header">
                            <h2>LOGIN</h2>
                        </div>
                        <p class="m"><b><i>${message}${param.error}</i></b></p>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" name="username" placeholder="Your Name" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" name="password" placeholder="Password" class="form-control"/>
                            </div>
                        </div>
                        <div class="card-footer text-muted">
                            <button class="btn btn-primary">Login</button>
                            <button type="reset" class="btn btn-secondary">Reset</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>