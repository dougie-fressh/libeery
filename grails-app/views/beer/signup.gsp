<%--
  Created by IntelliJ IDEA.
  User: Greg
  Date: 5/2/2016
  Time: 7:11 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css" />
    <asset:javascript src="application.js" />
    <title>Sign Up</title>
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
                    <g:link action="logout">Logout</g:link>
                </sec:ifLoggedIn>
            </div>
            <div class="col-lg-10" align="right">
                <ul class="list-inline">
                    <li><g:link action="index">Home</g:link></li>
                    <li><g:link action="myLibeery">My Libeery</g:link></li>
                    <li><g:link action="questionnaire">Questionnaire</g:link></li>
                    <li><g:link action="brewery">Brewery</g:link></li>
                    <li><g:link action="myprofile">My Profile</g:link></li>
                </ul>
            </div>
        </div>
    </div>
    <hr>
    <div class="page-header" align="center"><h1>Sign Up<br><small>The Only Beer Connoisseur is You</small></h1></div>
</head>
<body>
<div class="container">
    <div class="col-sm-6">
        <form id="signupform" class="form-horizontal" role="form" action="register">
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="username">Username</label></h3>
                <div class="col-md-5">
                    <g:textField name="username" id="username" required="true"/>
                </div>
            </div>
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="password">Password</label></h3>
                <div class="col-md-5">
                    <g:passwordField name="password" id="password" required="true"/>
                </div>
            </div>
            <g:submitButton name="Submit" value="Sign Up" class="btn-lg"/>
            <br><br>
        </form>
    </div>
</div>
</body>
</html>