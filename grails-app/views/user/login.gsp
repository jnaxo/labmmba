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
            <g:form name="login-form" url="[action: 'authenticate', controller: 'user']">

                <div class="form-group">
                    <label for="labmmba-email">Email address</label>
                    <input type="email" class="form-control" id="labmmba-email" name="labmmba-email"
                           placeholder="Email">
                </div>

                <div class="form-group">
                    <label for="labmmba-password">Password</label>
                    <input type="password" class="form-control" id="labmmba-password" name="labmmba-password"
                           placeholder="Password">
                </div>

                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Check me out
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </g:form>

            <h5>New User</h5>
            <g:link action="create" controller="user" class="btn btn-default">Sign Up</g:link>
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
