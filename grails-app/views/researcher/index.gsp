<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Home - LABMMBA</title>
</head>

<body>
<div class="row">
    <!-- left panel -->
    <div class="col-md-2">
        <g:link uri="#">
            <g:img id="profile-pic" class="img-responsive img-circle" dir="images" file="male-profile.png"
                   alt="profile picture"/>
        </g:link>
        <ul class="nav nav-pills nav-stacked" >
            <li class="active" role="presentation" id="botoninfo" ><a href="#">Informacion General</a></li>
            <li role="presentation" id="botonstudies" ><a href="#">Estudios </a> </li>
            <li role="presentation" id="botonpartners"><a href="#">Colegas </a> </li>
            <li role="presentation" id="botonthesis"><a href="#">Thesis </a></li>
            <li class="list-group-item text-center"><g:link uri='/j_spring_security_logout'
                                                            class="btn btn-danger btn-sm">Logout</g:link></li>
        </ul>
    </div>
    <!-- main panel-->
    <div class="col-md-8">
        <!-- SEARCHER -->
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="input-group " id="searcher-input">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
        <!-- Info -->
        <div class="panel panel-primary" id="tituloinfo">
            <div class="panel-heading">
                <h3 class="panel-title">Informacion Personal</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group" id="profile-info">
                    <li class="list-group-item" id="profile-name">${user.getName()}</li>
                    <li class="list-group-item">${researcher.getLab_job()}</li>
                    <li class="list-group-item">área inv: Biotecnología</li>
                    <li class="list-group-item" id="profile-studies">
                        <g:each in="${researcher.getStudies()}" var="std">
                            <g:if test="${std.getPosgraduate() == false}">
                                ${std.getTitle()}<br>
                            </g:if>
                        </g:each>
                        <g:each in="${researcher.getStudies()}" var="std">
                            <g:if test="${std.getPosgraduate() == true}">
                                <hr class="hr-small">
                                ${std.getTitle()}<br>
                            </g:if>
                        </g:each>
                    </li>
                    <li class="list-group-item" id="profile-college">
                        <g:each in="${researcher.getStudies()}" var="std">
                            <g:if test="${std.getPosgraduate() == false}">
                                ${std.getCollege()}<br>
                            </g:if>
                        </g:each>
                        <g:each in="${researcher.getStudies()}" var="std">
                            <g:if test="${std.getPosgraduate() == true}">
                                <hr class="hr-small">
                                ${std.getCollege()}<br>
                            </g:if>
                    </g:each>
                    </li>


                </ul>
            </div>
        </div>
        <!-- Studies -->
        <div class="panel panel-primary" id="titulostudies">
            <div class="panel-heading">
                <h3 class="panel-title">Studies</h3>
            </div>
            <div class="panel-body">
                Panel content
            </div>
        </div>
        <!-- Partners -->
        <div class="panel panel-primary" id="titulopartners">
            <div class="panel-heading">
                <h3 class="panel-title">Partner(s)</h3>
            </div>
            <div class="panel-body">
                Panel content
            </div>
        </div>
        <!-- Thesis -->
        <div class="panel panel-primary" id="titulothesis">
            <div class="panel-heading">
                <h3 class="panel-title">Thesis</h3>
            </div>
            <div class="panel-body">
                Panel content
            </div>
        </div>
        <!-- REPORTS -->
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Reportes</h3>
            </div>

            <div class="panel-body">
                Panel content
            </div>
        </div>
        <!-- Resumen / historial -->
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Resumen Histórico</h3>
            </div>

            <div class="panel-body">
                Panel content
            </div>
        </div>
    </div>

    <!-- notification panel -->
    <div class="col-sm-2" id="notification-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                Panel content
            </div>
        </div>

    </div>
</div>
<asset:javascript src="profile.js"/>
</body>
</html>