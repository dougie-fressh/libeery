<%--
  Created by IntelliJ IDEA.
  User: Greg
  Date: 4/17/2016
  Time: 3:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css" />
    <asset:javascript src="application.js" />
    <title>My Profile</title>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <img src="${createLinkTo(dir: 'images', file: 'beer_logo.png')}"class="img-rounded"/>
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
    <div class="page-header" align="center"><h1>Profile<br><small>The Only Beer Connoisseur is You</small></h1></div>
</head>

<body>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-2">
                <img src="${createLinkTo(dir: 'images', file: '100x100.png')}"class="img-responsive"/><br><br><br>
            </div>
            <div class="col-md-6">
                <h1>Name</h1><br>
                Some personal information the person can fill out here
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-sm-6">
        <form id="profileform" class="form-horizontal" role="form">
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="field1">Some Text</label></h3>
                <div class="col-md-5">
                    <select class="form-control" id="field1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select><br>
                </div>
            </div>
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="field2">Some Text</label></h3>
                <div class="col-md-5">
                    <select class="form-control" id="field2">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select><br>
                </div>
            </div>
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="field3">Some Text</label></h3>
                <div class="col-md-5">
                    <select class="form-control" id="field3">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select><br>
                </div>
            </div>
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="field4">Some Text</label></h3>
                <div class="col-md-5">
                    <select class="form-control" id="field4">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select><br>
                </div>
            </div>
            <div class="form-group">
                <h3><label class="control-label col-md-4" for="field5">Some Text</label></h3>
                <div class="col-md-5">
                    <select class="form-control" id="field5">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select><br>
                </div>
            </div>
        <g:submitButton name="Submit" value="Save" class="btn-lg"/>
            <br><br>
        </form>
        </div>
    </div>
</body>
</html>