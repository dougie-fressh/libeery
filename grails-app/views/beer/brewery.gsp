<%--
  Created by IntelliJ IDEA.
  User: Adam Sysol
  Date: 4/11/2016
  Time: 3:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css" />
    <asset:javascript src="application.js" />
    <title>The Brew</title>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <img src="${createLinkTo(dir: 'images', file: 'beer_logo.png')}" class="img-rounded"/>
            </div>
            <div class="col-md-4" align="right">
                Sign in
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
    <div class="page-header" align="center"><h1>Brewery<br><small>Discovery Starts Here.</small></h1></div>
</head>
<body>
    <br>
    <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#">IPA</a></li>
        <li role="presentation"><a href="#">Pale Ale</a></li>
        <li role="presentation"><a href="#">Amber Ale</a></li>
        <li role="presentation"><a href="#">Ale</a></li>
        <li role="presentation"><a href="#">Lager</a></li>
        <li role="presentation"><a href="#">Stout</a></li>
        <li role="presentation"><a href="#">Shandy</a></li>
        <li role="presentation"><a href="#">Sour</a></li>
    </ul>
    <table>
        <tr>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
        </tr>
        <tr>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
        </tr>
        <tr>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
            <td><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"></td>
        </tr>
    </table>
</body>
</html>