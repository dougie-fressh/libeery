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
    <div class="page-header" align="center"><h1>Libeery<br><small>Building your library of beer.</small></h1></div>
</head>

<body>
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <h1>Industry Updates</h1><br>
                <h3>Headline</h3><br>
                <div class="col-md-3"><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"class="img-rounded"/></div><div class="col-md-7">Some sample text about the industry. Some more sample text. keep writing about the industry, just keep writing, i don't have anything here yet, blah blah blah, blah blah blah blah blah, some other bullshit<br><br><br></div><br>
                <h3>Headline</h3><br>
                <div class="col-md-7">Some sample text about the industry. Some more sample text. keep writing about the industry, just keep writing, i don't have anything here yet, blah blah blah, blah blah blah blah blah, some other bullshit</div><div class="col-md-3"><img src="${createLinkTo(dir: 'images', file: '100x100.png')}"class="img-rounded"/></div>
            </div>
            <div class="col-sm-4">
                <h1>Trending</h1><br>
                <div class="col-sm-3"><img src="${createLinkTo(dir: 'images', file: '50x50.png')}"class="img-rounded"/></div><div class="col-sm-7">examplejaklrajsd; fljadk;lsfjakldsjfklajklejsfklajslf kjdsk;lfa;djsfklajsfklaewofidjsflkajds; lfjiofajewifojadsklfj aeipowjfaklsjdf;l<br><br><br></div>
                <div class="col-sm-3"><img src="${createLinkTo(dir: 'images', file: '50x50.png')}"class="img-rounded"/></div><div class="col-sm-7">adslfkja dkls;fjaklsfjaeiojsdfklas jdfpdsjioaewjakldsjflewaj ioajsfldkjafj aewio<br><br><br></div>
                <div class="col-sm-3"><img src="${createLinkTo(dir: 'images', file: '50x50.png')}"class="img-rounded"/></div><div class="col-sm-7">jadklsfj aweiojadklsjfk ;lasd jfoaeiwjkladsjfkl; asdjfio aewjfakd;lsfjojuei owfjasklfjaow<br><br><br></div>
            </div>
        </div>
    </div>
</body>
</html>