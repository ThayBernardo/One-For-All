DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Planos(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Plano VARCHAR(50) NOT NULL,
    Valor DECIMAL(3, 2)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Usuarios(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Usuario VARCHAR(50) NOT NULL,
    Idade INT NOT NULL,
    Data_assinatura DATE NOT NULL,
    Plano_id INT NOT NULL,
    FOREIGN KEY (Plano_id) REFERENCES SpotifyClone.Planos(id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artistas(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Albuns(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Album VARCHAR(100) NOT NULL,
    Lancamento YEAR NOT NULL,
	Artista_id INT NOT NULL,
    FOREIGN KEY (Artista_id) REFERENCES SpotifyClone.Artistas(id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Seguidores(
	Artista_id INT NOT NULL,
    Usuario_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (Artista_id, Usuario_id),
    FOREIGN KEY (Artista_id) REFERENCES SpotifyClone.Artistas(id),
    FOREIGN KEY (Usuario_id) REFERENCES SpotifyClone.Usuarios(id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Musicas(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Musica VARCHAR(100) NOT NULL,
    Duracao INT,
    Album_id INT NOT NULL,
    Artista_id INT NOT NULL,
    FOREIGN KEY (Album_id) REFERENCES SpotifyClone.Albuns(id),
    FOREIGN KEY (Artista_id) REFERENCES SpotifyClone.Artistas(id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Reproducoes(
    Data_Reproducao DATETIME NOT NULL,
    Musica_id INT NOT NULL,
    Usuario_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (Musica_id, Usuario_id),
    FOREIGN KEY (Musica_id) REFERENCES SpotifyClone.Musicas(id),
    FOREIGN KEY (Usuario_id) REFERENCES SpotifyClone.Usuarios(id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Planos(Plano, Valor)
VALUES 
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99),
('pessoal', 6.99);

INSERT INTO SpotifyClone.Usuarios(Nome_Usuario, Idade, Data_assinatura, Plano_id)
VALUES
('Thati', 23, "2019-10-20", 1),
('Cintia', 35, "017-12-30", 2),
('Bill', 20, "2019-06-05", 3),
('Roger', 45, "2020-05-13", 4),
('Norman', 58, "2017-02-17", 4),
('Patrick', 33, "2017-01-06", 2),
('Vivian', 26, "2018-01-05", 3),
('Carol', 19, "2018-02-14", 3),
('Angelica', 42, "2018-04-29", 2),
('Paul', 46, "2017-01-17", 2);

INSERT INTO SpotifyClone.Artistas(Nome_Artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon'),
('Tyler Isle'),
('Fog');

INSERT INTO SpotifyClone.Albuns(Nome_Album, Lancamento, Artista_id)
VALUES
('Envious', "1990", 1),
('Exuberant', "1993", 1),
('Hallowed Steam', "1995", 2),
('Incandescent', "1998", 3),
('Temporary Culture', "2001", 4),
('Library of liberty', "2003", 4),
('Chained Down', "2007", 5),
('Cabinet of fools', "2012", 5),
('No guarantees', "2015", 5),
('Apparatus', "2015", 6);

INSERT INTO SpotifyClone.Seguidores(Artista_id, Usuario_id)
VALUES
(1, 1),
(4, 1),
(3, 1),
(1, 2),
(3, 2),
(1, 3),
(2, 3),
(4, 4),
(5, 5),
(6, 5),
(1, 6),
(3, 6),
(6, 6),
(2, 7),
(5, 7),
(1, 8),
(5, 8),
(3, 9),
(4, 9),
(6, 9),
(2, 10),
(6, 10);

INSERT INTO SpotifyClone.Musicas(Nome_Musica, Duracao, Album_id, Artista_id)
VALUES
("Honey", 79, 10, 6),
("Walking And Man", 229, 7, 5),
("Young And Father", 197, 6, 4),
("Diamond Power", 241, 4, 3),
("Let's Be Silly", 132, 4, 3),
("I Heard I Want To Bo Alone", 120, 9, 5),
("Finding My Traditions", 179, 7, 5),
("Without My Love", 111, 6, 4),
("Baby", 136, 10, 6),
("Magic Circus", 105, 3, 2),
("Dance With Her Own", 116, 1, 1),
("Hard And Time", 135, 7, 5),
("Reflections Of Magic", 163, 1, 1),
("I Ride Alone", 151, 9, 5),
("Honey, I'm A Lone Wolf", 150, 7, 5),
("Honey, So Do I", 207, 3, 2),
("Rock His Everything", 223, 4, 3),
("Soul For Us", 200, 1, 1),
("Wouldn't It Be Nice", 213, 10, 6),
("He Heard You're Bad For Me", 154, 8, 5),
("He Hopes We Can't Stay", 210, 8, 5),
("Walking And Game", 123, 6, 4),
("Time Fireworks", 152, 2, 1),
("Troubles Of My Inner Fire", 203, 2, 1),
("Celebration Of More", 146, 4, 3),
("You Make Me Feel So.." , 83, 10, 6),
('He"s Walking Away', 159, 9, 5),
('He"s Trouble', 138, 9, 5),
("Thang Of Thunder", 240, 5, 4),
("Words Of Her Life", 185, 5, 4),
("Sweetie, Let's Go Wild" , 139, 3, 2),
("She Knows", 244, 3, 2),
("History Of My Roses", 222, 6, 4),
("Home Forever", 231, 4, 3),
("You Cheated On Me", 95, 10, 6),
("Fantasy For Me", 100, 4, 3),
("Without My Streets", 176, 5, 4),
("Need Of The Evening", 190, 6, 4),
("She Thinks I Won't Stay Tonight", 166, 8, 5),
("I Know I Know", 117, 8, 5);

INSERT INTO SpotifyClone.Reproducoes(Data_Reproducao, Musica_id, Usuario_id)
VALUES
("2020/02/28 10:45:55", 1, 1),
("2020/05/02 05:30:35", 2, 1),
("2020/03/06 11:22:33", 3, 1),
("2020/08/05 08:05:17", 4, 1),
("2020/09/14 16:32:22", 5, 1),
("2020/01/02 07:40:33", 6, 2),
("2020/05/16 06:16:22", 7, 2),
("2020/10/09 12:27:48", 8, 2),
("2020/09/21 13:14:46", 9, 2),
("2020/11/13 16:55:13", 10, 3),
("2020/12/05 18:38:30", 11, 3),
("2020/07/30 10:00:00", 12, 3),
("2021/08/15 17:10:10", 13, 4),
("2021/07/10 15:20:30", 14, 4),
("2021/01/09 01:44:33", 15, 4),
("2020/07/03 19:33:28", 16, 5),
("2017/02/24 21:14:22", 17, 5),
("2020/08/06 15:23:43", 4, 5),
("2020/11/10 13:52:27", 18, 5),
("2019/02/07 20:33:48", 19, 6),
("2017/01/24 00:31:17", 20, 6),
("2017/10/12 12:35:20", 21, 6),
("2018/05/29 14:56:41", 22, 6),
("2018/05/09 22:30:49", 23, 7),
("2020/07/27 12:52:58", 24, 7),
("2018/01/16 18:40:43", 25, 7),
("2018/03/21 16:56:40", 9, 8),
("2020/10/18 13:38:05", 26, 8),
("2019/05/25 08:14:03", 27, 8),
("2021/08/15 21:37:09", 28, 8),
("2021/05/24 17:23:45", 29, 9),
("2018/12/07 22:48:52", 30, 9),
("2021/03/14 06:14:26", 31, 9),
("2020/04/01 03:36:00", 32, 9),
("2017/02/06 08:21:34", 33, 10),
("2017/12/04 05:33:43", 8, 10),
("2017/07/27 05:24:49", 34, 10),
("2017/12/25 01:03:57", 35, 10);
