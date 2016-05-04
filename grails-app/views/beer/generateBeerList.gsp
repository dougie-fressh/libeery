<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/19/16
  Time: 6:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Beer List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
</head>
<body>
<div id="header">
    <h1>Personalized Results:</h1>
</div>
<g:form action="addUserBeers" id="addUserBeers" class="form-horizontal" role="form">
    <g:each var="beer" in="${beerList}">
        <div>
            <p><b><span><g:checkBox name="${beer.name}"/></span> ${beer.name}</b></p>
            <g:if test= "${beer.description}">
                <p>${beer.description}</p>
            </g:if>
            <g:else>
                <p> No description available.</p>
            </g:else>
            <br/>


        </div>
    </g:each>
    <g:submitButton name="Add to Libeery"/>
</g:form>
</body>
<script type="text/javascript">
    function addUserBeer(){
        var beer = document.getElementById()
    }
</script>
</html>