<!doctype html>
<html lang="es-CL" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        LABMMBA
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Colaboradores</a></li>
                        <li><a href="#">Investigación</a></li>
                        <li><a href="#">Integrantes</a></li>
                        <li><a href="#">Ubicación</a></li>
                    </ul>
                </div>

              </div>

            </nav>
        </header>
        <div class="container">
            <g:layoutBody/>
        </div>
        </div>
        <footer class="text-capitalize">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 cols-sm-offset-1">
                        laboratorio de microbiología molecular y biotecnología ambiental<br>
                        Universidad Federico Santa maría <br>
                        &copy; 2015 Zeek Chile
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
