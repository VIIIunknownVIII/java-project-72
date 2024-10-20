### Hexlet tests and linter status:
[![Actions Status](https://github.com/VIIIunknownVIII/java-project-72/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VIIIunknownVIII/java-project-72/actions)
[![hexlet-check](https://github.com/VIIIunknownVIII/java-project-72/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VIIIunknownVIII/java-project-72/actions/workflows/hexlet-check.yml)
<a href="https://codeclimate.com/github/VIIIunknownVIII/java-project-72/maintainability"><img src="https://api.codeclimate.com/v1/badges/21c85fd5fcb1a4214ac3/maintainability" /></a>

# Web-pages analyser
Полноценный веб-сайт на базе фреймворка Javalin. Здесь отрабатываются базовые принципы построения современных сайтов на MVC-архитектуре: работа с роутингом, обработчиками запросов и шаблонизатором, взаимодействие с базой данных через JDBC.

Независимо от используемого способа написания кода, вся веб-разработка (бэкенд) базируется на двух вещах: протоколе HTTP и клиент-серверной архитектуре, которые изучаются в соответствующих курсах. Любое обращение к сайту это HTTP-запрос, а результат который мы видим это HTTP-ответ. Эти понятия составляют основу любого фреймворка и изучаются в первую очередь. В свою очередь роутинг завязан на методах HTTP и использует их для формирования конкретных маршрутов. Часто на собеседовании спрашивают: "Что происходит, когда пользователь набирает в браузере адрес сайта и нажимает Enter?". После проекта ответ на этот вопрос станет очевидным из собственного опыта.