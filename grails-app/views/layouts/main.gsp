<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:javascript src="application.js"/>
        <asset:stylesheet src="carousel.css"/>
        <g:layoutHead/>
    </head>
    <body>

    <div class="navbar-wrapper">
        <div class="container">
            <nav class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand">Libeery</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><g:link controller="beer" action="index">Home</g:link></li>
                            <li><g:link controller="beer" action="myLibeery">My Libeery</g:link></li>
                            <li><g:link controller="beer" action="questionnaire">Questionnaire</g:link></li>
                            <li><g:link controller="beer" action="brewery">Brewery</g:link></li>
                            <li><g:link controller="beer" action="myprofile">My Profile</g:link></li>
                        </ul>
                        <div class="col-md-4" align="right">
                            <br>
                            <sec:ifNotLoggedIn>
                                <g:link controller="beer" action="signup">Sign Up</g:link> / <g:link action="auth" controller="login">Login</g:link>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn>
                                <g:link controller="beer" action="logout">Logout</g:link>
                            </sec:ifLoggedIn>
                        </div>
                    </div>
                </div>
            </nav>
            <img src="${createLinkTo(dir: 'images', file: 'Libeery_Logo_v2.bmp')}" class="pull-left" height="100"/>
        </div>
    </div>
    <br>
    <br>

        <hr>
        <g:layoutBody/>
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    </body>
</html>
