<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="public"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Investigación - LABMMBA</title>
</head>

<body>

<div class="row">
    <!-- SEARCHER -->
    <div class="col-md-6 col-md-offset-3">
        <div class="input-group " id="searcher-input">
            <input type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
                <button class="btn btn-success" type="button">Go!</button>
            </span>
        </div>
    </div>

</div>

<div class="row">

    <!-- Projects list-->
    <div class="col-md-8 col-md-offset-2 research-area-list">
        <h4>Áreas de Investigación</h4>

        <div class="row">
            <g:each in="${research_areas}" var="ra">
                <div class="col-md-3">
                    <div class="panel panel-primary research-area-list-panel">
                        <div class="panel-body">
                            <h5 class="text-center text-capitalize"><%=ra.name%></h5>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>

        <h4>Investigaciones</h4>
        <p class="help-block">Ups.. no se ha podido cargar la información</p>
        <div class="row">
            <g:each in="${projects}" var="p">

            </g:each>

        </div>

    </div>

</div>

</body>
</html>