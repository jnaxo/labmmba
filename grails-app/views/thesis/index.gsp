<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'thesis.label', default: 'Thesis')}"/>
    <title>Thesis - LABMMBA</title>
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
    <!-- List -->
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading"><b>Mis</b> Tésis</div>
                <div class="panel-body">
                    <g:if test="${projects}">
                        <div class="list-group">
                            <g:each in="${projects}" var="p">
                                <g:link controller="ResearchProject" action="show" params="[id:p.id]" class="list-group-item text-capitalize">
                                    <h4>${p.title} <span class="label label-default">${p.research_areas[0].name}</span></h4>
                                    <p>${p.description}</p>
                                </g:link>
                            </g:each>
                        </div>
                    </g:if>
                    <g:else>
                        No has subido ningún tipo de tésis
                    </g:else>
                </div>
                <div class="panel-footer">
                    <g:link controller="Thesis" action="create" class="btn btn-success right-block">Subir Tésis</g:link>
                    <g:link controller="Thesis" action="create_project" class="btn btn-default right-block">Nuevo Proyecto de Tésis</g:link>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>

</body>
</html>