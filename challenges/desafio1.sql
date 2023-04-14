DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone

CREATE TABLE plano (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(32) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL,
) engine = InnoDB;

CREATE TABLE pessoa_artista (
    pessoa_artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_artista VARCHAR(32) NOT NULL
) engine = InnoDB;

CREATE TABLE pessoa_usuaria (
    pessoa_usuaria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria VARCHAR(32) NOT NULL,
    sobrenome_pessoa_usuaria VARCHAR(32) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
) engine = InnoDB;

CREATE TABLE seguindo_pessoa_artista (
    seguindo_pessoa_artista_id INT PRIMARY KEY AUTO_INCREMENT,
    pessoa_usuaria_id	INT NOT NULL,
    pessoa_artista_id	INT NOT NULL,
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES pessoa_usuaria(pessoa_usuaria_id),
    FOREIGN KEY (pessoa_artista_id) REFERENCES pessoa_artista(pessoa_artista_id)
);

INSERT INTO plano (
    nome_plano,
    valor_plano
) VALUES
    ('gratuito', 0),
    ('universitário', 5.99),
    ('pessoal', 6.99),
    ('familiar', 7.99);

INSERT INTO pessoa_artista (
    nome_pessoa_artista
) VALUES
    ('Baco Exu do Blues'),
    ('Beyoncé'),
    ('Blind Guardian'),
    ('Elis Regina')
    ('Nina Simone')
    ('Queen');

INSERT INTO pessoa_usuaria (
    pessoa_usuaria_id,
    nome_pessoa_usuaria,
    sobrenome_pessoa_usuaria,
    idade,
    plano_id,
    data_assinatura
) VALUES
    ('Barbara', 'Liskov', 82, 1, '2019-10-20'),
    ('Robert', 'Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada', 'Lovelace', 37, 4, '2017-12-30'),
    ('Martin', 'Fowler', 46, 4, '2017-01-17'),
    ('Sandi', 'Metz', 58, 4, '2018-04-29'),
    ('Paulo', 'Freire', 19, 2, '2018-02-14'),
    ('Bell', 'Hooks', 26, 2, '2018-01-05'),
    ('Christopher', 'Alexander', 85, 3, '2019-06-05'),
    ('Judith', 'Butler', 45, 3, '2020-05-13'),
    ('Jorge', 'Amado', 58, 3, '2017-02-17');

INSERT INTO seguindo_pessoa_artista (
    seguindo_pessoa_artista_id,
    pessoa_usuaria_id,
    pessoa_artista_id
) VALUES
    ('1', '2'),
    ('1', '6'),
    ('1', '4'),
    ('2', '2'),
    ('2', '4'),
    ('3', '6'),
    ('4', '1'),
    ('5', '3'),
    ('5', '5'),
    ('6', '5'),
    ('6', '2'),
    ('7', '5'),
    ('9', '4'),
    ('10', '6');