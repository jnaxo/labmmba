<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Signup</title>
</head>

<body>

<div class="row" role="main">
    <div class="col-sm-6 col-sm-offset-3">
        <h3 class="text-center">Sign Up</h3>

        <div class="progress">
            <div id="signup-progress" class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25"
                 aria-valuemin="0"
                 aria-valuemax="100" style="width: 30%">
                <span class="sr-only">33% Complete (success)</span>
            </div>
        </div>

        <g:form action="save">
            <!-- STEP 1 -->
            <div id="signup-step1">
                <div class="form-group" id="label-name">
                    <g:textField class="form-control" id="labmmba-name" name="name" placeholder="Full Name"/>
                </div>

                <div class="form-group" id="label-email">
                    <g:textField type="email" class="form-control" id="labmmba-email" name="username"
                                 placeholder="Email"/>
                </div>

                <div class="form-group" id="label-password">
                    <g:passwordField class="form-control" id="labmmba-password" name="password" placeholder="Password"/>
                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><g:link uri="/"><span aria-hidden="true">&larr;</span> Home</g:link></li>
                        <li class="next"><a href="#" id="signup-continue1">Continue <span
                                aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>

            <!-- STEP2 -->
            <div id="signup-step2">
                <div class="form-group">
                    <g:textField class="form-control" id="labmmba-studies" name="labmmba-studies"
                           placeholder="Undergraduate Studies" />
                </div>

                <div class="form-group">
                    <g:textField class="form-control" id="labmmba-college" name="labmmba-college"
                           placeholder="College" />
                </div>

                <hr>
                <a href="#" class="btn btn-default disabled" data-toggle="modal" data-target="#postgraduate-modal">
                    <span class="glyphicon glyphicon-education" aria-hidden="true"></span> Add postgraduate studies
                </a>

                <ul id="postgraduate-list" class="list-group">

                </ul>

                <input type="hidden" id="labmmba-postgraduate-list" name="labmmba-postgraduate-list">

                <nav>
                    <ul class="pager">
                        <li class="previous"><a href="#" id="signup-back2"><span
                                aria-hidden="true">&larr;</span> Back</a></li>
                        <li class="next"><a href="#" id="signup-continue2">Continue <span
                                aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>

            <!-- STEP3 -->
            <div id="signup-step3">
                <div class="form-group">
                    <select class="form-control" id="labmmba-job" name="labjob">
                        <option>Occupancy in the Laboratory</option>
                        <option>Estudiante Pregrado</option>
                        <option>Estudiante Postgrado</option>
                        <option>Trabajador</option>
                        <option>Director</option>
                        <option>Jefe de Laboratorio</option>
                        <option>Colaborador Nacional</option>
                        <option>Colaborador Internacional</option>
                        <option>Otro</option>
                    </select>
                </div>

                <div class="form-group">
                    <select class="form-control" id="labmmba-research-area" name="labmmba-research-area">
                        <option>Research Area</option>
                        <option>Biotecnología vegetal</option>
                        <option>Compuestos bioactivos</option>
                        <option>Microbiología</option>
                        <option>Biotecnología Ambiental</option>
                        <option>Otro</option>
                    </select>
                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><a href="#" id="signup-back3" uri="/"><span
                                aria-hidden="true">&larr;</span> Back</a></li>
                        <li class="next"><a href="#" id="signup-continue3">Continue <span
                                aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>
            <!-- CONFIRM -->
            <div id="signup-confirm">
                <p class="text-primary"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Please confirm your information</p>
                <ul class="list-group">
                    <li class="list-group-item text-capitalize" id="li-name">Name:</li>
                    <li class="list-group-item" id="li-email">Email:</li>
                    <li class="list-group-item" id="li-studies">Studies:</li>
                    <li class="list-group-item" id="li-postgraduate-studies">
                        Postgraduate Studies:
                        <ul class="list-group"></ul>
                    </li>
                    <li class="list-group-item" id="li-job">Laboratory Charge:</li>
                    <li class="list-group-item" id="li-research-area">Research Area:</li>
                </ul>

                <nav>
                    <ul class="pager">
                        <li class="previous"><a href="#" id="signup-back4" uri="/"><span
                                aria-hidden="true">&larr;</span> Back</a></li>
                        <li><g:submitButton name="signup" value="Save" id="signup-submit" class="btn btn-success"/></li>
                    </ul>
                </nav>
            </div>


            <div class="alert alert-danger alert-dismissible" role="alert" id="err-field">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                <span class="sr-only">Error:</span>
                Completa correctamente todos los campos antes de continuar
            </div>


            <div class="alert alert-warning alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                <span class="sr-only">Warning:</span>
                Revisa las <a href="#" class="alert-link">condiciones</a> antes de registrarte
            </div>


            <!-- Postgraduate Modal -->
            <div class="modal fade" id="postgraduate-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Postgraduate Studies</h4>
                        </div>

                        <g:form id="postgraduate-form">
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="labmmba-poststudies"
                                           name="labmmba-postgraduate"
                                           placeholder="Postgraduate Studies">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" id="labmmba-postcollege"
                                           name="labmmba-postcollege"
                                           placeholder="College">
                                </div>

                                <div class="row">
                                    <div class="col-sm-3">
                                        <input type="number" class="form-control" id="labmmba-postyear"
                                               name="labmmba-postyear"
                                               placeholder="Year" min="1950" max="2040">
                                    </div>
                                </div>
                                <a href="#"></a>

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button id="add-postgraduate-btn" type="button" data-dismiss="modal"
                                        class="btn btn-primary">Add</button>
                            </div>
                        </g:form>
                    </div>
                </div>
            </div>
        </g:form>
    </div>
</div>
<asset:javascript src="signup.js"/>
</body>
</html>
