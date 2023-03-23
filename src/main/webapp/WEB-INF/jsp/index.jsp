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
    <img src="https://upload.wikimedia.org/wikipedia/commons/9/96/Kinopoisk_logo_orange.png">
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
<div class="wrapper">
  <div id="menu" class="menu">
    <button class="c-hamburger c-hamburger-line">
      <span>Menu</span>
    </button>
    <nav class="menu-list">
      <a href="/">Главная</a>
      <a href="#">Фильмы</a>
      <a href="#">Сериалы</a>
      <a href="#">Мультфильмы</a>
    </nav>
  </div>
</div>
<style>

</style>





<script>
 document.querySelector('.c-hamburger').addEventListener('click', function (e){
   e.preventDefault();
   // this.classList.toggle('is-active')
   if(this.classList.contains('is-active')){
     this.classList.remove('is-active');
     document.querySelector('#menu').classList.remove('nav-active');
     document.body.classList.remove('body-active')
   }
   else{
     this.classList.add('is-active');
     document.querySelector('#menu').classList.add('nav-active');
     document.querySelector('.wrapper').classList.add('wrapper-active')
   }
 })
</script>
</body>
</html>