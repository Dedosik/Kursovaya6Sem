<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Kinopoisk</title>
</head>
<body>
<div>
    <h2>Информация о фильме</h2>
    <b>Название фильма:</b>${kinofilm.name}<br>
    <b>Тип фильма:</b>${kinofilm.type}<br>
    <hr>
    <form action="/index/delete/${kinofilm.id}" method="post"></form>
    <input type="submit" value="Удалить фильм">
    <form/>
    <a href="/">Главная</a>
</div>
</body>
</html>