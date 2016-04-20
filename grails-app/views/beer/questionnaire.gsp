<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/11/16
  Time: 12:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css" />
    <asset:javascript src="application.js" />
    <title>Questionnaire</title>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <img src="${createLinkTo(dir: 'images', file: 'fakelogo.png')}"class="img-rounded"/>
            </div>
            <div class="col-md-4" align="right">
                Sign in
            </div>
            <div class="col-lg-10" align="right">
                <ul class="list-inline">
                    <li><g:link action="index">Home</g:link></li>
                    <li><g:link action="myLibeery">My Libeery</g:link></li>
                    <li><g:link action="questionnaire">Questionnaire</g:link></li>
                    <li><g:link action="myprofile">My Profile</g:link></li>
                </ul>
            </div>
        </div>
    </div>
    <hr>
    <div class="page-header" align="center"><h1>Questionnaire<br><small>Not Knowing What to Drink Ends Now</small></h1></div>
</head>

<body>
<g:form action="generateBeerList" id="generateBeerList" class="form-horizontal" role="form">
    <label>Get a beer list:</label>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-2">
                <img src="${createLinkTo(dir: 'images', file: '100x100.png')}"class="img-responsive"/><br><br><br>
            </div>
            <div class="col-md-6">
                <h1>Discover Your Beer</h1><br>
                Who are you?
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-sm-6">
            <form id="profileform" class="form-horizontal" role="form">
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field1">You wake up with a pounding hangover. You stumble into your kitchen and the first thing you do is pour yourself a glass of water. You follow it up with:</label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field1">
                            <option value="lager, bitter">1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field2">You’re at a party, and some drunk guy is trying to start something with your friend. You get in between the two of them and:</label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field2">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field3">It’s 8:00 on the weekend. You’re sitting on the couch with a (platonic) friend, and you have no plans. You:
                    </label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field3">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field4">It’s 8:00 on the weekend. You’re sitting on the couch with a (platonic) friend, and you have no plans. You:</label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field4">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field5">Some Text</label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field5">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select><br>
                    </div>
                </div>
                <br><br>
        </div>
    </div>
    <g:submitButton name="Generate!"/>
</g:form>
</body>
</html>