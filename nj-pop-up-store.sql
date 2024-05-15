-- NewJeans' POP-UP Store
CREATE TABLE songsjeans(
    id_songs INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    album VARCHAR(100)
);
-- NewJeans' seasons
CREATE TABLE seasons(
    id_season INT AUTO_INCREMENT PRIMARY KEY,
    nome_season VARCHAR(100),
    free_ador VARCHAR(4)
);
-- NewJeans' fans
CREATE TABLE visits(
    id_tokki INT AUTO_INCREMENT PRIMARY KEY,
    nome_tokki VARCHAR(100),
    idade CHAR(2),
    fav_song INT,
    fav_season INT,
    FOREIGN KEY (fav_song) REFERENCES songsjeans(id_songs),
    FOREIGN KEY (fav_season) REFERENCES seasons(id_season)
);

INSERT INTO songsjeans(nome, album) VALUES ("Attention", "NewJeans");
INSERT INTO songsjeans(nome, album) VALUES ("Hype Boy", "NewJeans");
INSERT INTO songsjeans(nome, album) VALUES ("Cookie", "NewJeans");
INSERT INTO songsjeans(nome, album) VALUES ("Hurt", "NewJeans");
INSERT INTO songsjeans(nome, album) VALUES ("Ditto", "OMG");
INSERT INTO songsjeans(nome, album) VALUES ("OMG", "OMG");
INSERT INTO songsjeans(nome, album) VALUES ("Super Shy", "Get Up");
INSERT INTO songsjeans(nome, album) VALUES ("New Jeans", "Get Up");
INSERT INTO songsjeans(nome, album) VALUES ("ETA", "Get Up");
INSERT INTO songsjeans(nome, album) VALUES ("How Sweet", "How Sweet");

INSERT INTO seasons(nome_season, free_ador) VALUES ("Summer Jeans", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Summer Jeans", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Ditto Season", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Ditto Season", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Summer Jeans", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Summer Jeans", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Ditto Season", "Não");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Ditto Season", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Summer Jeans", "Sim");
INSERT INTO seasons(nome_season, free_ador) VALUES ("Summer Jeans", "Sim");

INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Deyvid", "19", 10, 1);
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Evellyn", "18", 9, 2); 
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Emily", "18", 8, 3);    
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Jessica", "19", 7, 4);  
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Isadora", "19", 6, 5);  
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Stella", "18", 5, 6);   
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Eduardo", "19", 4, 7);  
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Rafael", "17", 3, 8);   
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Sandro", "19", 2, 9);  
INSERT INTO visits(nome_tokki, idade, fav_song, fav_season) VALUES ("Cristiane", "20", 1, 10);
 
SELECT * FROM songsjeans;
SELECT * FROM visits;
SELECT * FROM seasons;
SELECT * FROM songsjeans WHERE album = 'NewJeans';
SELECT * FROM visits WHERE fav_song = (SELECT id_songs FROM songsjeans WHERE nome = 'Hurt');
UPDATE visits SET nome_tokki = 'Eva' WHERE id_tokki = 2;
DELETE FROM visits WHERE idade = '17';
SELECT * FROM visits;
SELECT * FROM seasons WHERE nome_season = 'Summer Jeans';
SELECT * FROM visits WHERE id_tokki = 10;
SELECT * FROM visits WHERE fav_song = (SELECT id_songs FROM songsjeans WHERE nome = 'How Sweet');



