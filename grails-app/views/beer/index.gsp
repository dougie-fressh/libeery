<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/11/16
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Libeery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
</head>

<body>
    <div class="container theme-shocase" role="main">
        <div class="page-header" align="center"><h1>The Libeery<br><small>Find yourself a drink</small></h1></div>
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
    </div>
</body>
</html>