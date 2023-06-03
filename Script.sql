-- Год
CREATE TABLE IF NOT EXISTS Year (
	id SERIAL PRIMARY KEY,
	year_name SMALLINT NOT NULL UNIQUE
);

-- Альбом
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_name INTEGER NOT NULL REFERENCES Year(id)	
);

-- Трек
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

-- Сборник
CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_name INTEGER NOT NULL REFERENCES Year(id)	
);

-- Посредник Трек Сборник
CREATE TABLE IF NOT EXISTS TrackCollection (
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Track(id),
	collection_id INTEGER NOT NULL REFERENCES Collection(id)
);

-- Исполнитель
CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

-- Посредник Исполнитель Альбом
CREATE TABLE IF NOT EXISTS SingerAlbum (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES Singer(id),
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

-- Жанр
CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL UNIQUE
);

-- Посредник Исполнитель Жанр
CREATE TABLE IF NOT EXISTS SingerGenre (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES Singer(id),
	genre_id INTEGER NOT NULL REFERENCES Genre(id)
);
