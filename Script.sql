-- Альбом
CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(80) NOT NULL,
	year_name INTEGER NOT NULL UNIQUE
);

-- Трек
CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(80) NOT NULL,
	track_duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

-- Сборник
CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(80) NOT NULL,
	year_name INTEGER NOT NULL	
);

-- Посредник Трек Сборник
CREATE TABLE IF NOT EXISTS TrackCollection (
	tc_id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Track(track_id),
	collection_id INTEGER NOT NULL REFERENCES Collection(collection_id)
);

-- Исполнитель
CREATE TABLE IF NOT EXISTS Singer (
	singer_id SERIAL PRIMARY KEY,
	singer_name VARCHAR(80) NOT NULL
);

-- Посредник Исполнитель Альбом
CREATE TABLE IF NOT EXISTS SingerAlbum (
	sa_id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES Singer(singer_id),
	album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

-- Жанр
CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(80) NOT NULL UNIQUE
);

-- Посредник Исполнитель Жанр
CREATE TABLE IF NOT EXISTS SingerGenre (
	sg_id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES Singer(singer_id),
	genre_id INTEGER NOT NULL REFERENCES Genre(genre_id)
);