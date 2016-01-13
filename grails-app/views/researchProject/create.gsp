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
                    <g:textField class="form-control" id="labmmba-description" name="description"
                                 placeholder="Una breve descripción..."/>
                </div>
            </div>
            
            <div class="form-group" id="label-area">
                <label for="labmmba-area" class="col-sm-2 control-label">Área de Investigación</label>
                <div class="col-sm-10">
                    <g:select class="form-control" id="labmmba-area" name="areas"
                              from="${research_areas}" optionKey="id" optionValue="name" noSelection="${['':'Otra área']}"/>
                </div>                 
            </div>

            <div class="form-group" id="label-other">
                <label for="labmmba-other" class="col-sm-2 control-label"></label>

                <div class="col-sm-10">
                    <g:textField class="form-control" id="labmmba-other" name="other" placeholder="Nombre área de investigación ..."/>
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

            <div class="row">
                <div class="col-md-2 col-md-offset-10">
                    <g:submitButton name="save" value="Save" class="btn btn-success"/>
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
    <!-- notification panel --
    <div-- class="col-md-2" id="notification-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                Panel content
            </div>
        </div>

    </div-->
</div>

</body>
</html>