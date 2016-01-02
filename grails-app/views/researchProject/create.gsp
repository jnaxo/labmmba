<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Home - LABMMBA</title>
</head>

<body>
<div class="row">
    <!-- main -->
    <div class="col-md-8 col-md-offset-2">
        <h3 class="text-center">Nuevo Proyecto de Investigación</h3>
        <hr>

        <g:form action="save" class="form-horizontal">
            <div class="form-group" id="label-title">
                <label for="labmmba-title" class="col-sm-2 control-label">Título</label>
                <div class="col-sm-10">
                    <g:textField class="form-control" id="labmmba-title" name="title" placeholder="Título"/>
                </div>
            </div>

            <div class="form-group" id="label-description">
                <label for="labmmba-description" class="col-sm-2 control-label">Descripción</label>
                <div class="col-sm-10">
                    <g:textField class="form-control" id="labmmba-description" name="description" placeholder="Una breve descripción..."/>
                </div>
            </div>

            <div class="form-group" id="label-kind">
                <label for="labmmba-kind" class="col-sm-2 control-label">Tipo</label>
                <div class="col-sm-10">
                    <g:textField class="form-control" id="labmmba-kind" name="kind" placeholder="e.j: fondef"/>
                </div>
            </div>

            <div class="form-group" id="label-age">
                <label for="labmmba-age" class="col-sm-2 control-label">Años de Ejecución</label>
                <div class="col-sm-10">
                    <g:textField class="form-control" id="labmmba-age" name="age" placeholder="e.j: 2010-2013"/>
                </div>
            </div>

        </g:form>

        <nav>
            <ul class="pager">
                <li class="previous"><g:link controller="researchProject"><span
                        aria-hidden="true">&larr;</span> Volver</g:link></li>
            </ul>
        </nav>
    </div>
    <!-- notification panel -->
    <div class="col-md-2" id="notification-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                Panel content
            </div>
        </div>

    </div>
</div>

</body>
</html>