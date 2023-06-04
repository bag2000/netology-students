-- Задание 2. Название и продолжительность самого длительного трека
select track_name, track_duration 
from track
order by track_duration desc limit 1;

-- Задание 2. Название треков, продолжительность которых не менее 3,5 минут
select track_name
from track
where track_duration >= 210;

-- Задание 2. Названия сборников, вышедших в период с 2018 по 2020 год включительно
select collection_name, year_name 
from collection
where year_name between 2018 and 2020;

-- Задание 2. Исполнители, чьё имя состоит из одного слова
select singer_name
from singer
WHERE (LENGTH(singer_name) - LENGTH(replace(singer_name, ' ', ''))) = 0;

-- Задание 2. Название треков, которые содержат слово «мой» или «my»
select track_name
from track 
where string_to_array(lower(track_name), ' ') && array['мой'] or string_to_array(lower(track_name), ' ') && array['my'];