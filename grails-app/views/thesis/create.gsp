<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Home - LABMMBA</title>
</head>

<body>
<div class="row create-form">
    <!-- main -->
    <div class="col-md-6 col-md-offset-3">
        <g:uploadForm action="save" class="form-horizontal" method="post" controller="Thesis">
            <input type="hidden" name="state" value="full">

            <div id="thesis-file-form">
                <h3 class="text-center">Subir Tésis <small>Archivo</small></h3>
                <hr>

                <div class="form-group">
                    <label for="labmmba-file">Archivo Tésis</label>
                    <input type="file" id="labmmba-file" name="file">

                    <p class="help-block">Suba sólo Tésis en <strong>PDF</strong></p>
                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><g:link controller="Thesis"><span
                                aria-hidden="true">&larr;</span> Volver</g:link></li>
                        <li class="next"><a href="#" id="thesis-continue">Continue <span
                                aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>

            <div id="thesis-data-form">
                <h3 class="text-center">Subir Tésis <small>Datos</small></h3>
                <hr>

                <div class="form-group" id="label-title">
                    <label for="labmmba-title" class="col-sm-2 control-label">Título</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-title" name="title" placeholder="Título"/>
                    </div>
                </div>

                <div class="form-group" id="label-year">
                    <label for="labmmba-year" class="col-sm-2 control-label">Año</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-year" name="year"
                                     placeholder="Año de publicación"/>
                    </div>
                </div>

                <div class="form-group" id="label-journal">
                    <label for="labmmba-journal" class="col-sm-2 control-label">Revista</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-journal" name="journal" placeholder="Revista"/>
                    </div>
                </div>

                <div class="form-group" id="label-volume">
                    <label for="labmmba-volume" class="col-sm-2 control-label">Volumen</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-volume" name="volume" placeholder="Volumen"/>
                    </div>
                </div>

                <div class="form-group" id="label-publiser">
                    <label for="labmmba-publisher" class="col-sm-2 control-label">Editorial</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-publisher" name="publisher"
                                     placeholder="Editorial"/>
                    </div>
                </div>

                <div class="form-group" id="label-url">
                    <label for="labmmba-url" class="col-sm-2 control-label">URL</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-url" name="turl"
                                     placeholder="Fuente oficial de descarga"/>
                    </div>
                </div>

                <div class="form-group" id="label-ISSN">
                    <label for="labmmba-ISSN" class="col-sm-2 control-label">ISSN</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-ISSN" name="issn" placeholder="Código ISSN"/>
                    </div>
                </div>

                <div class="form-group" id="label-DOI">
                    <label for="labmmba-DOI" class="col-sm-2 control-label">DOI</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-DOI" name="doi" placeholder="Código DOI"/>
                    </div>
                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><a href="#" id="thesis-back"><span
                                aria-hidden="true">&larr;</span> Volver</a></li>
                        <li class="next"><a href="#" id="thesis-continue2">Continue <span
                                aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>

            <div id="thesis-authors-form">
                <h3 class="text-center">Subir Tésis <small>Autores</small></h3>
                <hr>

                <div class="form-group" id="label-author-kind">

                    <div class="col-sm-10">
                        <p class="help-block">Seleccione procedencia del autor, luego indique su nombre</p>

                        <div class="radio">
                            <label>
                                <input type="radio" name="authorkind" id="optionsRadios1" value="option1" checked>
                                Autor de la tésis es miembro del laboratorio
                            </label>
                        </div>

                        <div class="radio">
                            <label>
                                <input type="radio" name="authorkind" id="optionsRadios2" value="option2">
                                Autor de la tésis es externo al laboratorio
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group" id="label-member-author">
                    <div class="col-sm-10">
                        <g:select class="form-control" id="labmmba-member-author" name="memberauthor"
                                  from="${members}" optionKey="id" optionValue="${user}"/>

                    </div>
                </div>

                <div class="form-group" id="label-extern-author">
                    <div class="col-sm-10">
                        <g:textField class="form-control" id="labmmba-extern-author" name="extern-author"
                                     placeholder="Nombre y apellidos del autor de tésis"/>
                    </div>
                </div>

                <a href="#" class="btn btn-default" id="add-author-btn">Agregar Autor</a>

                <ul id="author-list" class="list-group">
                </ul>

                <input type="hidden" id="labmmba-author-list" name="authorlist">

                <nav>
                    <ul class="pager">
                        <li class="previous"><a href="#" id="thesis-back2"><span
                                aria-hidden="true">&larr;</span> Volver</a></li>
                        <li><g:submitButton name="submit" value="Save" id="submit" class="btn btn-success"/></li>
                    </ul>
                </nav>

            </div>

        </g:uploadForm>
    </div>
    <!-- notification panel --
    <div-- class="col-md-2" id="notification-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                Panel content
            </div>
        </div>

    </div-->
</div>
<asset:javascript src="create-thesis.js"/>
</body>
</html>