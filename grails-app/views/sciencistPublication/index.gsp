<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Scientist Publication - LABMMBA</title>
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
                    <div class="panel-heading"><b>Mis</b> Publicaciones científicas</div>

                    <div class="panel-body">
                        <g:if test="${publications}">
                            <div class="list-group">
                                <g:each in="${publications}" var="p">
                                    <g:link controller="SciencistPublication" action="show" params="[id:p.id]" class="list-group-item text-capitalize">
                                        <h4>${p.title} <span class="label label-default">${p.research_areas[0].name}</span></h4>
                                        <p>${p.description}</p>
                                    </g:link>
                                </g:each>
                            </div>
                        </g:if>
                        <g:else>
                            No has subido documentos científicos.
                        </g:else>

                    </div>
                    <div class="panel-footer">
                        <g:link controller="SciencistPublication" action="create" class="btn btn-success right-block">Subir Doc. Científico</g:link>
                    </div>
                </div>

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