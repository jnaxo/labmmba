<!doctype html>
<html lang="es-CL" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" type="image/png" href="${createLinkTo(dir:'images',file:'favicon.png')}">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>
        <g:layoutHead/>
    </head>
    <body class="body-private">
        <header>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar--brand-admin">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <g:link class="navbar-brand" uri="/">
                            LABMMBA
                        </g:link>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="navbar-admin ${controllerName.equals('researcher') ? 'active' : ''}">
                                <g:link uri="/">Home</g:link>
                            </li>
                            <li class="navbar-admin ${controllerName.equals('researchProject') ? 'active' : ''}">
                                <g:link controller="researchProject">Investigaciones</g:link>
                            </li>
                            <li class="navbar-admin ${controllerName.equals('thesis') ? 'active' : ''}">
                                <g:link controller="Thesis">Tesis</g:link>
                            </li>
                            <li class="navbar-admin ${controllerName.equals('sciencistPublication') ? 'active' : ''}">
                                <g:link controller="sciencistPublication">Docs Científicos</g:link>
                            </li>
                            <li class="navbar-admin"><a href="#">Colaboradores</a></li>
                            <li class="navbar-admin"><g:link uri="#">Account Settings</g:link></li>
                        </ul>
                    </div>
                </div>
             </nav>
        </header>
        <div class="container">
            <g:layoutBody/>
        </div>
    <footer class="text-capitalize">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 cols-sm-offset-1">
                    laboratorio de microbiología molecular y biotecnología ambiental<br>
                    Universidad Federico Santa maría <br>
                    FISw - Grupo 12
                </div>
            </div>
        </div>
    </footer>
    </body>
</html>
