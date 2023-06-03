-- Задание 3. Количество исполнителей в каждом жанре.
select g.name, count(s.singer_id) as cnt
from singergenre s inner join genre g
on s.genre_id = g.id
group by g.name

-- Задание 3. Количество треков, вошедших в альбомы 2019–2020 годов.
select count(t."name")
from track t join album a 
on t.album_id = a.id
join "year" y 
on a.year_name = y.id 
where y.year_name between 2019 and 2020


-- Задание 3. Средняя продолжительность треков по каждому альбому.
select avg(t.duration) as avg_duration, a."name" as album
from track t join album a 
on t.album_id = a.id
join "year" y 
on a.year_name = y.id 
group by a."name" 

-- Задание 3. Все исполнители, которые не выпустили альбомы в 2020 году.
select s."name"
from singer s 
join singeralbum sa 
on s.id = sa.singer_id 
join album a 
on a.id = sa.album_id 
join "year" y 
on a.year_name = y.id 
where y.year_name <> 2020

-- Задание 3. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c."name"
from collection c
join trackcollection tc
on tc.collection_id = c.id 
join track t
on t.id = tc.track_id 
join album a 
on t.album_id = a.id 
join singeralbum sa
on sa.album_id = a.id 
join singer s
on s.id = a.id 
where s."name" = 'Исполнитель2'