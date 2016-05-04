<%--
  Created by IntelliJ IDEA.
  User: Adam Sysol
  Date: 4/11/2016
  Time: 3:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>The Brew</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
</head>
<body>
    <div class="page-header" align="center"><h1>Brewery<br><small>Discovery Starts Here.</small></h1></div>
    <br>
    <ul class="nav nav-tabs">
        <li role="presentation" id="IPA" class="active"><a href="#" onclick="highlight('IPA')">IPA</a></li>
        <li role="presentation" id="Pale Ale"><a href="#" onclick="highlight('Pale Ale')">Pale Ale</a></li>
        <li role="presentation" id="Amber Ale"><a href="#" onclick="highlight('Amber Ale')">Amber Ale</a></li>
        <li role="presentation" id="Ale"><a href="#" onclick="highlight('Ale')">Ale</a></li>
        <li role="presentation" id="Larger"><a href="#" onclick="highlight('Larger')">Lager</a></li>
        <li role="presentation" id="Stout"><a href="#" onclick="highlight('Stout')">Stout</a></li>
        <li role="presentation" id="Shandy"><a href="#" onclick="highlight('Shandy')">Shandy</a></li>
        <li role="presentation" id="Sour"><a href="#" onclick="highlight('Sour')">Sour</a></li>
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