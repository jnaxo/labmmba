<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="public">
        <title>Index</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <div role="main">
            <div class="row">
                <!-- Login -->
                <div class="col-sm-3 col-sm-offset-1 login-container">
                    <h4>Sign In</h4>
                    <hr>
                    <form method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                      </div>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Check me out
                        </label>
                      </div>
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                    <h5>New User</h5>
                    <a href="#" class="btn btn-default">Sign Up</a>
                </div>

                <!-- carousel -->
                <div class="col-sm-7 carousel-container">

                    <div id="main-carousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#main-carousel" data-slide-to="1"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active carousel-img">
                                <g:img dir="images" file="labmmba1.jpg" class="img-responsive"/>
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="item carousel-img">
                                <g:img dir="images" file="labmmba2.jpg" class="img-responsive"/>
                                <div class="carousel-caption">
                                </div>
                            </div>
                        </div>

                  <!-- Controls -->
                  <a class="left carousel-control" href="#main-carousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#main-carousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>

                </div>

            </div>
        </div>

    </body>
</html>
