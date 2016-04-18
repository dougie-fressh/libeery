<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/11/16
  Time: 12:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css" />
    <asset:stylesheet src="starrating.css" />
    <asset:javascript src="application.js" />
    <title>My Libeery</title>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <img src="${createLinkTo(dir: 'images', file: 'beer_logo.png')}"class="img-rounded"/>
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
    <div class="page-header" align="center"><h1>My Libeery<br><small>Your Personal Libeery</small></h1></div>
</head>
<body>
    <div class="container">
        <div class="col-lg-10" align="right">
            <button class="btn btn-default" value="Add" name="Add">Add</button>  <button class="btn btn-default" value="Edit" name="Edit">Edit</button>
        </div>
        <div class="col-md-3">
            <img src="${createLinkTo(dir: 'images', file: 'heineken_beer.png')}"class="img-rounded"/>
        </div>
        <div class="col-md-4">
            <h3>Heineken</h3><br>
            <h1>Heineken International</h1><br>
            <span class="star-rating">
                <input type="radio" name="rating" value="1"><i></i>
                <input type="radio" name="rating" value="2"><i></i>
                <input type="radio" name="rating" value="3"><i></i>
                <input type="radio" name="rating" value="4"><i></i>
                <input type="radio" name="rating" value="5"><i></i>
            </span>
        </div>
        <div class="col-md-4">
            ABV: 5.4%<br>
            IBU: 18.5
        </div>
</body>
</html>