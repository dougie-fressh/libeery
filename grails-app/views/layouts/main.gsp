<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>

        <g:layoutHead/>
    </head>
    <body>
        <div class="container">
            <div class="row-fluid">
                <div class="col-md-6">
                    <img src="${createLinkTo(dir: 'images', file: 'Libeery_Logo_v2.bmp')}" class="img-rounded" height="200"/>
                </div>
                <div class="col-md-4" align="right">
                    <sec:ifNotLoggedIn>
                        <g:link controller="beer" action="signup">Sign Up</g:link> / <g:link action="auth" controller="login">Login</g:link>
                    </sec:ifNotLoggedIn>
                    <sec:ifLoggedIn>
                        <g:link controller="beer" action="logout">Logout</g:link>
                    </sec:ifLoggedIn>

                </div>
                <div class="col-lg-10" align="right">
                    <ul class="list-inline">
                        <li><g:link controller="beer" action="index">Home</g:link></li>
                        <li><g:link controller="beer" action="myLibeery">My Libeery</g:link></li>
                        <li><g:link controller="beer" action="questionnaire">Questionnaire</g:link></li>
                        <li><g:link controller="beer" action="brewery">Brewery</g:link></li>
                        <li><g:link controller="beer" action="myprofile">My Profile</g:link></li>
                    </ul>
                </div>
            </div>
        </div>
        <hr>
        <g:layoutBody/>
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    </body>
</html>
