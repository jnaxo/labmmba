<!doctype html>
<html lang="es-CL" class="no-js">
<<<<<<< HEAD
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image/png" href="${createLinkTo(dir: 'images', file: 'favicon.png')}">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body>
<div class="body-public">
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
=======
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
    <body>
        <div class="body-public">
        <header>
            <nav class="navbar navbar-default">
              <div class="container-fluid">
>>>>>>> fdd45605f71c621be78c0d6877ad362d2cc9da1a
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
                        <li><g:link uri="/">Home</g:link></li>
                        <li><a href="#" >Colaboradores</a></li>
                        <li><a href="#" >Investigación</a></li>
                        <li ${controllerName.equals('Researcher') ? 'class=active' : ''}>
                            <g:link controller="researcher" action="list">Integrantes Laboratorio</g:link>
                        </li>
                        <li><a href="#" data-toggle="modal" data-target="#locationMap">Ubicación</a></li>
                    </ul>
                </div>

            </div>

        </nav>
    </header>

    <div class="container">
        <g:layoutBody/>
    </div>
</div>

<div class="modal fade" id="locationMap" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Ubicación</h4>
            </div>

            <div class="modal-body">
                <g:img dir="images" file="location.jpg" class="img-responsive" id="location-map-img"></g:img>
            </div>
            <div class="modal-footer">
                <p>Universidad Técnica Federico Santa María<br>Av. España 1680, Edificio B, 3° piso<br>Valparaíso - Chile</p>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
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
