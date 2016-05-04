<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/11/16
  Time: 12:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Questionnaire</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
</head>
<body>
<div class="page-header" align="center"><h1>Questionnaire<br><small>Not Knowing What to Drink Ends Now</small></h1></div>
    <g:form action="generateBeerList" name="generateBeerList" class="form-horizontal" role="form">
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
                    <div class="form-group">
                        <h5><label class="control-label col-md-8" for="field1">You wake up with a pounding hangover. You stumble into your kitchen and the first thing you do is pour yourself a glass of water. You follow it up with:</label></h5>
                        <div class="col-md-3">
                            <g:select class="form-control" name="field1" from="${qMap1}"
                                      optionKey="key" optionValue="value">
                            </g:select><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <h5><label class="control-label col-md-8" for="field2">You’re at a party, and some drunk guy is trying to start something with your friend. You get in between the two of them and:</label></h5>
                        <div class="col-md-3">
                            <g:select class="form-control" name="field2" from="${qMap2}"
                                      optionKey="key" optionValue="value">
                            </g:select><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <h5><label class="control-label col-md-8" for="field3">It’s 8:00 on the weekend. You’re sitting on the couch with a (platonic) friend, and you have no plans. You:
                        </label></h5>
                        <div class="col-md-3">
                            <g:select class="form-control" name="field3" from="${qMap3}"
                                      optionKey="key" optionValue="value">
                            </g:select><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <h5><label class="control-label col-md-8" for="field4">You're setting up your site for a weekend camping trip. People are unloading their packs, and you volunteer to:</label></h5>
                        <div class="col-md-3">
                            <g:select class="form-control" name="field4" from="${qMap4}"
                                      optionKey="key" optionValue="value">
                            </g:select><br>
                        </div>
                    </div>
                </div>
            <br><br>
        </div>
        <g:submitButton name="Generate!"/>
    </g:form>
</body>
</html>