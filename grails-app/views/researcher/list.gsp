<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="public"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Integrantes del Laboratorio - LABMMBA</title>
</head>

<body>

<div class="row">
    <!-- SEARCHER -->
    <div class="col-md-6 col-md-offset-3">
        <div class="input-group " id="searcher-input">
            <input type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
                <button class="btn btn-success" type="button">Go!</button>
            </span>
        </div>
    </div>

</div>

<div class="row">

    <!-- Researcher list-->
    <div class="col-md-8 col-md-offset-2">
        <div class="row">
            <g:each in="${researchers}" var="r">
                <!-- Researcher preview -->
                <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-body">
                            <g:img class="img-responsive img-circle" dir="images" file="male-profile.png"
                                   alt="profile picture"/>
                        </div>
                        <div class="panel-footer">${r.user.name}</div>
                    </div>
                </div>
            </g:each>
        </div>

    </div>
</div>

</body>
</html>