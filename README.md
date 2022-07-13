# README

Proyecto de integración de contenido en Desafio Latam G28 Full Stack

El proyecto es una aplicación que entrega aleatoriamente actividades para realizar en momentos de ocio. 
Construida con Ruby 2.6.4, Ruby on Rails 5.2.3 y base de datos Postgresql.

El siguiente diagrama conceptual muestra las principales entidades con las que trabajará la app:

![alt text][concept]

[concept]: /modelo_conceptual.jpg "Diagrama conceptual"

El tablero Trello con el backlog y las historias de usuario está disponible en el siguiente link:

[Tablero Trello] https://trello.com/b/hVKJLaJe/randtivities-app

El diseño inicial de la base de datos
contempla las siguientes tablas/modelos con las relaciones indicadas, como se puede ver en el modelo lógico:

![alt text][logic]

[logic]: /modelo_logico.jpg "Diagrama lógico"


Para visualizar la app puede ingresar a:

[Heroku] (https://randtivities.herokuapp.com/)

## Pasos para levantar el proyecto:

- Clonar el repo
- rails db:create
- rails db:migrate
- rails db:seed
- rails s
- ¡Disfruta!
