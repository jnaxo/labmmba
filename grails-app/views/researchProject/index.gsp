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
    <div class="col-md-10">
        <div class="row">
            <!-- SEARCHER -->
            <div class="col-md-8 col-md-offset-3">
                <div class="input-group " id="searcher-input">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
        <!-- list -->
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading"><b>Mis</b> Proyectos de investigación</div>

                    <div class="panel-body">
                        No participas en ningún proyecto de investigación.
                    </div>
                    <div class="panel-footer">
                        <g:link controller="researchProject" action="create" class="btn btn-success right-block">Nuevo Proyecto</g:link>
                    </div>
                </div>

            </div>
        </div>
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