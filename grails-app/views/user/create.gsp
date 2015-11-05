<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title></title>
</head>

<body>

<div class="row" role="main">
    <div class="col-sm-6 col-sm-offset-3">
    <h2 class="text-center">Registrarse</h2>

    <g:form action="save">
        <div class="form-group">
            <input type="text" class="form-control" id="labmmba-name" name="labmmba-name" placeholder="Full Name">
        </div>

        <div class="form-group">
            <input type="email" class="form-control" id="labmmba-email" name="labmmba-email" placeholder="Email">
        </div>

        <div class="form-group">
            <input type="password" class="form-control" id="labmmba-password" name="labmmba-password" placeholder="Password">
        </div>

        <div class="alert alert-warning alert-dismissible" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Warning:</span>
            Revisa las <a href="#" class="alert-link">condiciones</a> antes de registrarte
        </div>

        <fieldset class="buttons text-center">
            <g:submitButton name="SignIn" class="btn btn-primary"
                            value="Sign in"/>
        </fieldset>
    </g:form>
    </div>
</div>
</body>
</html>
