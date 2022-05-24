CREATE SCHEMA `proyecto_integrador`;
USE proyecto_integrador;

CREATE TABLE usuarios(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_usuario VARCHAR (50) NOT NULL,
password VARCHAR(255),
date_registration DATE,
followers INT,
email VARCHAR (320) NOT NULL,
fecha_nac DATE,
preg_seg VARCHAR (50) 
);

CREATE TABLE posts(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
id_usuario INT UNSIGNED NOT NULL,
url_img TEXT NOT NULL, 
post_descr TEXT NOT NULL,
published DATE,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

CREATE TABLE comentarios(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
id_post INT UNSIGNED NOT NULL,
id_usuario INT UNSIGNED NOT NULL,
comentario TEXT,
fecha_comment DATE,
FOREIGN KEY (id_post) REFERENCES posts(id),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

INSERT INTO usuarios (id, nombre_usuario, date_registration, followers, email)
VALUES 
(DEFAULT, 'marcosvons', DATE('2010-09-18'), 3410, 'vonstremayrmarcos@gmail.com'),
(DEFAULT, 'timokarl', DATE('2014-10-02'), 5123, 'tkarl@udesa.edu.ar'),
(DEFAULT, 'valennies', DATE('2012-03-28'), 4213, 'vnies@udesa.edu.ar'),
(DEFAULT, 'alevivone', DATE('2005-01-15'), 10000, 'alevivone@gmail.com'),
(DEFAULT, 'dariosus', DATE('2007-06-13'), 12497, 'sus@gmail.com');

INSERT INTO posts (id, id_usuario, url_img, post_descr, published)
VALUES
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Aca ranchando con los pibes despues de la jodita de año nuevo!', DATE('2020-01-01')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Arranco el calorsito', DATE('2018-04-12')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Que lindo programar', DATE('2018-04-01')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Gran Meme', DATE('2018-05-12')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Solo para programadores', DATE('2018-02-02')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'JAJAJAJ', DATE('2018-07-22')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Un meme hecho por mi', DATE('2018-04-14')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'MEMAZO', DATE('2018-08-17')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Holaaaaa', DATE('2018-02-09')),
(DEFAULT, 1, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'HTML CSS JAVASCRIPT', DATE('2018-04-15')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Librito, vinito al sol', DATE('2015-05-20')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Aca en Depo', DATE('2016-11-27')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Despues de entregar el PI', DATE('2015-12-20')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'CTRL C CTRL V', DATE('2015-05-10')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'MEMAZOS', DATE('2015-06-22')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', '@dariosus', DATE('2015-02-28')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'EL MEJOR JUEGO DEL MUNDO', DATE('2015-01-12')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'MYSQL', DATE('2015-09-05')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Programando hasta tarde', DATE('2015-03-23')),
(DEFAULT, 2, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'A reirse un poco', DATE('2015-07-26')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Salidita con la chicas', DATE('2018-04-02')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Flashback al verano', DATE('2019-05-17')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Eran buenas epocas', DATE('2019-02-17')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'JAJAJAJA', DATE('2019-05-01')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Estos memes son todo', DATE('2019-09-29')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Seguime a mi otra cuenta de memes', DATE('2019-01-18')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Que seria de este mundo sin memes', DATE('2019-01-19')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Te odio por ser tan gracioso', DATE('2019-11-17')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'JAJAJAJ yo en epoca de parciales', DATE('2019-12-17')),
(DEFAULT, 3, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Cansado de tanto programar', DATE('2019-10-17')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Programando a full', DATE('2008-11-29')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Que buen proyecto integrador se mandaron!', DATE('2020-09-28')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Full stack vs el resto', DATE('2008-02-29')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'El punto y coma arruina vidas', DATE('2008-11-29')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Mis ojos despues de estar toda la noche programando', DATE('2008-10-29')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Pasen buenas paginas de memes', DATE('2008-09-09')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'HTML es el mejor lenguaje de programacion', DATE('2008-12-20')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Feliz año nuevo', DATE('2008-12-31')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Estoy cansado', DATE('2008-11-09')),
(DEFAULT, 4, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'mundo cruel', DATE('2008-11-22')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Hola Mundo!', DATE('2010-07-29')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Que lindo dia', DATE('2020-02-19')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Como llueve', DATE('2020-05-19')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Un meme para levantar el luness', DATE('2020-01-11')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'MEMEGRAM ES MEJOR QUE TIKTOK', DATE('2020-10-12')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'ARRIBA ARRIBA QUE ES VIERNES', DATE('2020-08-29')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'cuando se te rompe el codigo', DATE('2020-07-20')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'HORRIBLE cuando pasa esto', DATE('2020-11-05')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Espero aprobar', DATE('2020-12-02')),
(DEFAULT, 5, 'https://cdn.memegenerator.es/imagenes/memes/full/3/80/3805897.jpg', 'Que sea lo que Dios quiera', DATE('2020-09-18'));

INSERT INTO comentarios(id, id_post, id_usuario, comentario, fecha_comment)
VALUES
(DEFAULT, 1, 1, 'JAJA', DATE('2020-01-01')),
(DEFAULT, 1, 1, '!!!!!', DATE('2020-01-02')),
(DEFAULT, 1, 1, 'Buenisimo', DATE('2020-01-03')),
(DEFAULT, 1, 1, 'Genial', DATE('2020-01-04')),
(DEFAULT, 2, 1, 'jajajajajaaa', DATE('2020-01-05')),
(DEFAULT, 2, 1, 'genial', DATE('2020-01-06')),
(DEFAULT, 2, 1, 'buena', DATE('2020-01-07')),
(DEFAULT, 2, 1, 'jajajaj', DATE('2020-01-08')),
(DEFAULT, 3, 2, 'JAJAJJA', DATE('2020-01-09')),
(DEFAULT, 3, 2, 'que careta', DATE('2020-01-10')),
(DEFAULT, 3, 2, 'malo malo', DATE('2020-01-11')),
(DEFAULT, 3, 2, 'jajajajja', DATE('2020-01-12')),
(DEFAULT, 4, 2, '@fonsi', DATE('2020-01-13')),
(DEFAULT, 4, 2, 'malo', DATE('2020-01-14')),
(DEFAULT, 4, 2, 'Noo no', DATE('2020-01-15')),
(DEFAULT, 4, 2, 'JAJAJ', DATE('2020-01-16')),
(DEFAULT, 5, 3, 'barbaro', DATE('2020-01-17')),
(DEFAULT, 5, 3, '@colores', DATE('2020-01-18')),
(DEFAULT, 5, 3, '@guardiaAyres', DATE('2020-01-19')),
(DEFAULT, 5, 3, 'milanesas', DATE('2020-01-20')),
(DEFAULT, 6, 3, 'Hay milanesas', DATE('2020-01-21')),
(DEFAULT, 6, 3, 'Mauu', DATE('2020-01-22')),
(DEFAULT, 6, 3, 'JOOO JOO', DATE('2020-01-23')),
(DEFAULT, 6, 3, 'ju juu', DATE('2020-01-24')),
(DEFAULT, 7, 4, 'Buenoo', DATE('2020-01-25')),
(DEFAULT, 7, 4, 'eso', DATE('2020-01-26')),
(DEFAULT, 7, 4, 'manso', DATE('2020-01-27')),
(DEFAULT, 7, 4, 'ee', DATE('2020-01-28')),
(DEFAULT, 8, 4, '@nqv', DATE('2020-01-29')),
(DEFAULT, 8, 4, 'jajaja', DATE('2020-01-30')),
(DEFAULT, 8, 4, 'juuuu', DATE('2020-02-01')),
(DEFAULT, 8, 4, 'Ja', DATE('2020-02-02')),
(DEFAULT, 9, 5, 'JAJ', DATE('2020-02-03')),
(DEFAULT, 9, 5, 'shoroo', DATE('2020-02-04')),
(DEFAULT, 9, 5, 'mee estalle', DATE('2020-02-05')),
(DEFAULT, 9, 5, 'jaj', DATE('2020-02-06')),
(DEFAULT, 10, 5, 'AJAJA', DATE('2020-02-07')),
(DEFAULT, 10, 5, 'Aaaa', DATE('2020-02-08')),
(DEFAULT, 10, 5, 'JAJAJJAJA', DATE('2020-02-09')),
(DEFAULT, 10, 5, 'ajaja', DATE('2020-02-10')),
(DEFAULT, 1, 1, 'JAJA', DATE('2020-01-01')),
(DEFAULT, 1, 1, '!!!!!', DATE('2020-01-02')),
(DEFAULT, 1, 1, 'Buenisimo', DATE('2020-01-03')),
(DEFAULT, 1, 1, 'Genial', DATE('2020-01-04')),
(DEFAULT, 2, 1, 'jajajajajaaa', DATE('2020-01-05')),
(DEFAULT, 2, 1, 'genial', DATE('2020-01-06')),
(DEFAULT, 2, 1, 'buena', DATE('2020-01-07')),
(DEFAULT, 2, 1, 'jajajaj', DATE('2020-01-08')),
(DEFAULT, 3, 2, 'JAJAJJA', DATE('2020-01-09')),
(DEFAULT, 3, 2, 'que careta', DATE('2020-01-10')),
(DEFAULT, 3, 2, 'malo malo', DATE('2020-01-11')),
(DEFAULT, 3, 2, 'jajajajja', DATE('2020-01-12')),
(DEFAULT, 4, 2, '@fonsi', DATE('2020-01-13')),
(DEFAULT, 4, 2, 'malo', DATE('2020-01-14')),
(DEFAULT, 4, 2, 'Noo no', DATE('2020-01-15')),
(DEFAULT, 4, 2, 'JAJAJ', DATE('2020-01-16')),
(DEFAULT, 5, 3, 'barbaro', DATE('2020-01-17')),
(DEFAULT, 5, 3, '@colores', DATE('2020-01-18')),
(DEFAULT, 5, 3, '@guardiaAyres', DATE('2020-01-19')),
(DEFAULT, 5, 3, 'milanesas', DATE('2020-01-20')),
(DEFAULT, 6, 3, 'Hay milanesas', DATE('2020-01-21')),
(DEFAULT, 6, 3, 'Mauu', DATE('2020-01-22')),
(DEFAULT, 6, 3, 'JOOO JOO', DATE('2020-01-23')),
(DEFAULT, 6, 3, 'ju juu', DATE('2020-01-24')),
(DEFAULT, 7, 4, 'Buenoo', DATE('2020-01-25')),
(DEFAULT, 7, 4, 'eso', DATE('2020-01-26')),
(DEFAULT, 7, 4, 'manso', DATE('2020-01-27')),
(DEFAULT, 7, 4, 'ee', DATE('2020-01-28')),
(DEFAULT, 8, 4, '@nqv', DATE('2020-01-29')),
(DEFAULT, 8, 4, 'jajaja', DATE('2020-01-30')),
(DEFAULT, 8, 4, 'juuuu', DATE('2020-02-01')),
(DEFAULT, 8, 4, 'Ja', DATE('2020-02-02')),
(DEFAULT, 9, 5, 'JAJ', DATE('2020-02-03')),
(DEFAULT, 9, 5, 'shoroo', DATE('2020-02-04')),
(DEFAULT, 9, 5, 'mee estalle', DATE('2020-02-05')),
(DEFAULT, 9, 5, 'jaj', DATE('2020-02-06')),
(DEFAULT, 10, 5, 'AJAJA', DATE('2020-02-07')),
(DEFAULT, 10, 5, 'Aaaa', DATE('2020-02-08')),
(DEFAULT, 10, 5, 'JAJAJJAJA', DATE('2020-02-09')),
(DEFAULT, 10, 5, 'ajaja', DATE('2020-02-10'));

