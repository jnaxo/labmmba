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
        <!-- show -->
        <div class="row">
            <div class="col-md-10 col-md-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <h4 class="text-uppercase"><%= project.title %><br><small><%= project.age %></small></h4>
                        <hr>
                        <p class="text-muted"><%= project.description %></p>
                        <br>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-info">Archivos</li>
                            <li class="list-group-item">No hay archivos</li>
                        </ul>
                    </div>

                </div>
                <nav>
                    <ul class="pager">
                        <li class="previous"><g:link controller="researchProject"><span
                                aria-hidden="true">&larr;</span> Volver</g:link></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <!-- notification panel --

    <div class="col-md-2" id="notification-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                Panel content
            </div>
        </div>

    </di--v-->
</div>

</body>
</html>