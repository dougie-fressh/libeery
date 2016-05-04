<%--
  Created by IntelliJ IDEA.
  User: Greg
  Date: 5/2/2016
  Time: 7:11 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
</head>
<body>
<div class="page-header" align="center"><h1>Sign Up<br><small>The Only Beer Connoisseur is You</small></h1></div>
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