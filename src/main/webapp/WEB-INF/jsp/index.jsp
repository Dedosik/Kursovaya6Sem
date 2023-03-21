<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <title>Главная</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/styleIndex.css">
</head>
<body>
<div class="container">
  <div class="logo">
    <img src="https://avatars.mds.yandex.net/get-ott/1672343/2a000001706322b7aab311a80769a58e93d4/960x540">
  </div>
  <div class="content">
    <ul class="list_links">
      <li><span>${pageContext.request.userPrincipal.name}</span></li>
      <sec:authorize access="!isAuthenticated()">
        <li><a href="/login">Войти</a></li>
        <li><a href="/registration">Зарегистрироваться</a></li>
      </sec:authorize>
      <li><sec:authorize access="isAuthenticated()">
        <a href="/logout">Выйти</a>
      </sec:authorize></li>
      <sec:authorize access="hasAnyRole('ADMIN')">
      <li><a href="/add">Добавить</a></li>
      </sec:authorize>
      <sec:authorize access="hasAnyRole('ADMIN')">
      <li><a href="/admin">Пользователи</a></li>
      </sec:authorize>
      <sec:authorize access="hasAnyRole('USER')">
        <li><a href="/watch">Просмотренное</a></li>
      </sec:authorize>
    </ul>
  </div>
</div>
<style>

</style>
</body>
</html>