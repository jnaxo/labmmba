<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-3">nombre:</div>
        </div>
        <div class=""><g:link uri='/j_spring_security_logout'>Logout</g:link></div>
    </body>
</html>