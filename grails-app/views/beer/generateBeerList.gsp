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
<g:form action="addUserBeers" id="addUserBeers" class="form-horizontal" role="form">
    <g:each var="beer" in="${beerList}">
        <g:hidden name="${beer.name}_beerId" value="${beer.id}"></g:hidden>
        <div>
            <span>${beer.name} - ${beer.description}
                <g:checkBox name="${beer.name}"/>
            </span>
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