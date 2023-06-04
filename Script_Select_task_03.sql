-- Задание 3. Количество исполнителей в каждом жанре.
select g.genre_name, count(s.singer_id) as cnt
from singergenre s inner join genre g
on s.genre_id = g.genre_id
group by g.genre_name;

-- Задание 3. Количество треков, вошедших в альбомы 2019–2020 годов.
select count(t.track_name)
from track t join album a 
on t.album_id = a.album_id
where a.year_name between 2019 and 2020;


-- Задание 3. Средняя продолжительность треков по каждому альбому.
select avg(t.track_duration) as avg_duration, a.album_name as album
from track t join album a 
on t.album_id = a.album_id
group by a.album_name;

-- Задание 3. Все исполнители, которые не выпустили альбомы в 2020 году.
select s.singer_name
from singer s
where s.singer_name not in(
    select s.singer_name
    from singer s
    join singeralbum sa 
    on s.singer_id = sa.singer_id 
    join album a 
    on a.album_id = sa.album_id 
    where a.year_name = 2020
);

-- Задание 3. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.collection_name
from collection c
join trackcollection tc
on tc.collection_id = c.collection_id 
join track t
on t.track_id = tc.track_id 
join album a 
on t.album_id = a.album_id 
join singeralbum sa
on sa.album_id = a.album_id 
join singer s
on s.singer_id = a.album_id 
where s.singer_name = 'Исполнитель 3'
group by c.collection_name;