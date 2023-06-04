-- Жанр
insert into genre (genre_name) values ('жанр 1');
insert into genre (genre_name) values ('жанр 2');
insert into genre (genre_name) values ('жанр 3');
insert into genre (genre_name) values ('жанр 4');
insert into genre (genre_name) values ('жанр 5');

-- Альбом
insert into album (album_name, year_name) values ('Альбом 1', 2017);
insert into album (album_name, year_name) values ('Альбом 2', 2018);
insert into album (album_name, year_name) values ('Альбом 3', 2019);
insert into album (album_name, year_name) values ('Альбом 4', 2020);
insert into album (album_name, year_name) values ('Альбом 5', 2021);

-- Исполнитель
insert into singer (singer_name) values ('Исполнитель1');
insert into singer (singer_name) values ('Исполнитель2');
insert into singer (singer_name) values ('Исполнитель 3');
insert into singer (singer_name) values ('Исполнитель 4');
insert into singer (singer_name) values ('Исполнитель 5');

-- Трек
insert into track (track_name, track_duration, album_id) values ('myself', 120, 1);
insert into track (track_name, track_duration, album_id) values ('by myself', 200, 2);
insert into track (track_name, track_duration, album_id) values ('bemy self', 240, 3);
insert into track (track_name, track_duration, album_id) values ('myself by', 275, 4);
insert into track (track_name, track_duration, album_id) values ('by myself by', 300, 5);
insert into track (track_name, track_duration, album_id) values ('beemy', 200, 1);
insert into track (track_name, track_duration, album_id) values ('premyne', 245, 2);
insert into track (track_name, track_duration, album_id) values ('мой', 280, 3);
insert into track (track_name, track_duration, album_id) values ('мой мир', 310, 4);
insert into track (track_name, track_duration, album_id) values ('my', 315, 5);


-- Сборник
insert into collection (collection_name, year_name) values ('Сборник 1', 2017);
insert into collection (collection_name, year_name) values ('Сборник 2', 2018);
insert into collection (collection_name, year_name) values ('Сборник 3', 2019);
insert into collection (collection_name, year_name) values ('Сборник 4', 2020);
insert into collection (collection_name, year_name) values ('Сборник 5', 2021);

-- Посредник Трек Сборник
insert into trackcollection (track_id, collection_id) values (1, 1);
insert into trackcollection (track_id, collection_id) values (2, 2);
insert into trackcollection (track_id, collection_id) values (3, 3);
insert into trackcollection (track_id, collection_id) values (4, 4);
insert into trackcollection (track_id, collection_id) values (5, 5);
insert into trackcollection (track_id, collection_id) values (6, 1);
insert into trackcollection (track_id, collection_id) values (7, 2);
insert into trackcollection (track_id, collection_id) values (8, 3);
insert into trackcollection (track_id, collection_id) values (9, 4);
insert into trackcollection (track_id, collection_id) values (10, 5);

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