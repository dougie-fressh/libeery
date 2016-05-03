<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/11/16
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css" />
    <asset:javascript src="application.js" />
    <title>Libeery</title>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <img src="${createLinkTo(dir: 'images', file: 'Libeery_Logo_v2.png')}"class="img-rounded"/>
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
    <div class="page-header" align="center"><h1>Profile<br><small>Change your profile settings</small></h1></div>
</head>

<body>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <h1>Industry Updates</h1><br>
                <h3>Headline</h3><br>
                <div class="col-md-3"><img src="${createLinkTo(dir: 'images', file: 'beer_day_logo.png')}"class="img-rounded"/></div><div class="col-md-7"> National Beer Day is April 7th! Use this as an excuse to get out and fully experience what breweries have to offer! Look out for exclusive flavors and brands to try this holiday.<br><br><br></div><br>
                <h3>Headline</h3><br>
                <div class="col-md-7"> Anheuser--Busch announced it is to acquire Devils Backbone Brewery to add to 'The High End'. This is Busch's division that house more selective and craft breweries.</div><div class="col-md-3"><img src="${createLinkTo(dir: 'images', file: 'devils_logo.png')}"class="img-rounded"/></div>
            </div>
            <div class="col-sm-4">
                <h1>Trending</h1><br>
                <div class="col-sm-3"><img src="${createLinkTo(dir: 'images', file: 'oberon_logo.png')}"class="img-rounded"/></div><div class="col-sm-7"> Bells Oberon; Checkout this popular wheat ale just in time for summer! Mixing spicy hops with mildly fruity aromas, it's a for sure favorite<br><br><br></div>
                <div class="col-sm-3"><img src="${createLinkTo(dir: 'images', file: 'goose_island_logo.png')}"class="img-rounded"/></div><div class="col-sm-7"> Goose Island IPA; If you like hops, Goose Island is sure to satisfy. This IPA comes with a bold hop bitterness that lasts to the last drop.<br><br><br></div>
                <div class="col-sm-3"><img src="${createLinkTo(dir: 'images', file: 'stillwater_logo.png')}"class="img-rounded"/></div><div class="col-sm-7"> Stillwater Artisanal Cellar Door; A wheat ale that gives a new twist with sage as an ingredient to bring all flavors together for a full cleansing beer.<br><br><br></div>
            </div>
        </div>
    </div>
</body>
</html>