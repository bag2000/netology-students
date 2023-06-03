-- Задание 2. Название и продолжительность самого длительного трека
select name, duration 
from track
order by duration desc limit 1

-- Задание 2. Название треков, продолжительность которых не менее 3,5 минут
select name 
from track
where duration >= 210

-- Задание 2. Названия сборников, вышедших в период с 2018 по 2020 год включительно
select c.name, y.year_name
from collection c inner join year y
on c.id = y.id
where y.year_name between 2018 and 2020

-- Задание 2. Исполнители, чьё имя состоит из одного слова
select name
from singer s
WHERE (LENGTH(name) - LENGTH(replace(name, ' ', ''))) = 0

-- Задание 2. Название треков, которые содержат слово «мой» или «my»
select name
from track t 
where name like '%my%' or name like '%мой%'