<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="prototype.app.Button" %>
<%@ page import="prototype.app.PrototypeRegistry" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prototype Pattern Example</title>
</head>
<body>
<h1>Prototype Pattern Example</h1>
<%
PrototypeRegistry registry = new PrototypeRegistry();
Button redButtonPrototype = new Button(10, 40, "red");
registry.addItem("LandingButton", redButtonPrototype);
Button clonedButton = (Button) registry.getByColor("red");
%>
<h2>Cloned Button:</h2>
<p>x: <%= clonedButton.getX() %></p>
<p>y: <%= clonedButton.getY() %></p>
<p>color: <%= clonedButton.getColor() %></p>
</body>
</html>