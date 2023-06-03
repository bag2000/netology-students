-- Жанр
insert into genre (name) values ('жанр 1');
insert into genre (name) values ('жанр 2');
insert into genre (name) values ('жанр 3');
insert into genre (name) values ('жанр 4');
insert into genre (name) values ('жанр 5');

-- Год
insert into year (year_name) values (2017);
insert into year (year_name) values (2018);
insert into year (year_name) values (2019);
insert into year (year_name) values (2020);
insert into year (year_name) values (2021);

-- Альбом
insert into album (name, year_name) values ('Альбом 1', 1);
insert into album (name, year_name) values ('Альбом 2', 2);
insert into album (name, year_name) values ('Альбом 3', 3);
insert into album (name, year_name) values ('Альбом 4', 4);
insert into album (name, year_name) values ('Альбом 5', 5);

-- Исполнитель
insert into singer (name) values ('Исполнитель1');
insert into singer (name) values ('Исполнитель2');
insert into singer (name) values ('Исполнитель 3');
insert into singer (name) values ('Исполнитель 4');
insert into singer (name) values ('Исполнитель 5');

-- Трек
insert into track (name, duration, album_id) values ('мой 1', 120, 1);
insert into track (name, duration, album_id) values ('my 2', 200, 2);
insert into track (name, duration, album_id) values ('Трек 3', 240, 3);
insert into track (name, duration, album_id) values ('Трек 4', 275, 4);
insert into track (name, duration, album_id) values ('Трек 5', 300, 5);
insert into track (name, duration, album_id) values ('Трек 6', 310, 5);

-- Сборник
insert into collection (name, year_name) values ('Сборник 1', 1);
insert into collection (name, year_name) values ('Сборник 2', 2);
insert into collection (name, year_name) values ('Сборник 3', 3);
insert into collection (name, year_name) values ('Сборник 4', 4);
insert into collection (name, year_name) values ('Сборник 5', 5);

-- Посредник Трек Сборник
insert into trackcollection (track_id, collection_id) values (1, 1);
insert into trackcollection (track_id, collection_id) values (2, 2);
insert into trackcollection (track_id, collection_id) values (3, 3);
insert into trackcollection (track_id, collection_id) values (4, 4);
insert into trackcollection (track_id, collection_id) values (5, 5);
insert into trackcollection (track_id, collection_id) values (6, 5);

-- Посредник Исполнитель Альбом
insert into singeralbum  (singer_id, album_id) values (1, 1);
insert into singeralbum  (singer_id, album_id) values (2, 2);
insert into singeralbum  (singer_id, album_id) values (3, 3);
insert into singeralbum  (singer_id, album_id) values (4, 4);
insert into singeralbum  (singer_id, album_id) values (5, 5);

-- Посредник Исполнитель Жанр
insert into singergenre  (singer_id, genre_id ) values (1, 1);
insert into singergenre  (singer_id, genre_id ) values (2, 2);
insert into singergenre  (singer_id, genre_id ) values (3, 3);
insert into singergenre  (singer_id, genre_id ) values (4, 1);
insert into singergenre  (singer_id, genre_id ) values (5, 2);