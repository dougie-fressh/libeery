<%--
  Created by IntelliJ IDEA.
  User: dougkinney
  Date: 4/11/16
  Time: 12:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Libeery</title>
</head>

<body>
this page is where the user answers questions to generate the 'beers you may like' list

<g:form action="generateBeerList">
    <label>Get a beer list:</label>
    <br />
    <g:submitButton name="Generate!"/>
</g:form>

</body>
</html>