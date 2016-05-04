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
                Find the beer in you?
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
                            <option value="MALT and FRUIT">Orange Juice</option>
                            <option value="ROAST SOFT">Milk</option>
                            <option value="ROAST DARK">Coffee3</option>
                            <option value="CRISP">Tea</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field2">You’re at a party, and some drunk guy is trying to start something with your friend. You get in between the two of them and:</label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field2">
                            <option value="MALT">Start swinging</option>
                            <option value="TART">Talk quickly and de-escalate the situation</option>
                            <option value="SMOKE">Talk loud and intimidating; get the other guy to back down</option>
                            <option value="HOP">Say nothing and stare dead-eyed into the guy’s soul</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field3">It’s 8:00 on the weekend. You’re sitting on the couch with a (platonic) friend, and you have no plans. You:
                    </label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field3">
                            <option value="HOP and SMOKE">Leap off of the couch and drag your friend to a bar, where you meet people and get rather inebriated.</option>
                            <option value="CRISP and MALT">Call a few of your mutual friends, go to a restaurant, and have a nice intimate conversation over drinks.</option>
                            <option value="TART and FRUIT">Open that bottle of wine you’ve been saving, share it with your friend, and have a deep talk about the meaning of life.</option>
                            <option value="CRISP">Open that bottle of wine you’ve been saving, kick your friend out, and have a quiet evening doing (insert hobby) by yourself.</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5><label class="control-label col-md-8" for="field4">You're setting up your site for a weekend camping trip. People are unloading their packs, and you volunteer to:</label></h5>
                    <div class="col-md-3">
                        <select class="form-control" id="field4">
                            <option value="SMOKE and TART">Gather firewood, chop it up</option>
                            <option value="ROAST">Set up the tent</option>
                            <option value="FRUIT">Seek out those wildberries you heard grow in the area</option>
                            <option value="HOP">Play guitar and rock out</option>
                        </select><br>
                    </div>
                </div>
                </form>
            </div>
        <br><br>
    </div>

    <g:submitButton name="Generate!"/>
</g:form>
</body>
</html>