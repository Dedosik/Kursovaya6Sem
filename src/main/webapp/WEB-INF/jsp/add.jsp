<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/styleAdd.css">
    <title>Добавить</title>
</head>
<body>
<div>
    <h2>Добавить</h2>
    <form action="/add/create" method="post">
        <div class="container">
            <p>Название: </p>
            <input type="text" name="name">
            <p>Описание</p>
            <input type="text" name="description">
            <p>Картинка</p>
            <input type="text" placeholder="вставьте ссылку" name="picture">
            <p>Тип</p>
            <select name="type">
                <option>Фильм</option>
                <option>Сериал</option>
                <option>Мультфильм</option>
            </select>
            <input type="submit" value="Добавить фильм"/>
            <a href="/">Главная</a>
        </div>
    </form>
</div>
</body>
</html>