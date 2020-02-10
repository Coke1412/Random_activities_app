# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Proyecto de integración de contenido en Desafio Latam G28 Full Stack

El proyecto es una aplicación que entrega aleatoriamente actividades para realizar en momentos de ocio. 
Construida con Ruby 2.6.4, Ruby on Rails 5.2.3 y base de datos Postgresql.
El diagrama conceptual muestra las principales entidades con las que trabajará la app:

![alt text][concept]

[concept]: /modelo_conceptual.jpg "Diagrama conceptual"

El tablero Trello con el backlog y las historias de usuario está disponible en el siguiente link:

[Tablero Trello] https://trello.com/b/hVKJLaJe/random-app

El diseño inicial de la base de datos (no implementado aún)
contempla las siguientes tablas/modelos con las relaciones indicadas, como se puede ver en el modelo lógico:

![alt text][logic]

[logic]: /modelo_lógico.png "Diagrama lógico"


Para visualizar el landing page puede ingresar a:

[Heroku] (https://fathomless-cove-15048.herokuapp.com/)

## Pasos para levantar el proyecto:

- Clonar el repo
- rails db:create
- rails db:migrate
- rails db:seed
- rails s
- ¡Disfruta!