\c postgres

    DROP DATABASE blog;

    CREATE DATABASE blog;

    \c blog

CREATE TABLE usuario (
    id serial,
    email varchar(50),
    PRIMARY KEY (id)
);

    insert into usuario(email)
    values('usuario01@hotmail.com');
    insert into usuario(email)
    values('usuario02@hotmail.com');
    insert into usuario(email)
    values('usuario03@hotmail.com');
    insert into usuario(email)
    values('usuario04@hotmail.com');
    insert into usuario(email)
    values('usuario05@hotmail.com');
    insert into usuario(email)
    values('usuario06@hotmail.com');
    insert into usuario(email)
    values('usuario07@hotmail.com');
    insert into usuario(email)
    values('usuario08@hotmail.com');
    insert into usuario(email)
    values('usuario09@hotmail.com');


CREATE TABLE post (
    id serial,
    titulo VARCHAR(50),
    fecha DATE,
    usuario_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 1:esto es malo', '2020-06-29', 1);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 2:esto es malo', '2020-06-20', 5);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 3:esto es excelente', '2020-05-30', 1);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 4:esto es bueno', '2020-05-09', 9);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 5:esto es bueno', '2020-07-10', 7);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 6:esto es excelente', '2020-07-18', 5);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 7:esto es excelente', '2020-07-07', 8);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 8:esto es excelente', '2020-05-14', 5);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 9:esto es bueno', '2020-05-08', 2);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 10:esto es bueno', '2020-06-02', 6);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 11:esto es bueno', '2020-05-05', 4);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 12:esto es malo', '2020-07-23', 9);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 13:esto es excelente', '2020-05-30', 5);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 14:esto es excelente', '2020-05-01', 8);
    INSERT INTO post
    (titulo, fecha, usuario_id)
    VALUES
    ('post 15:esto es malo', '2020-06-17', 7);


CREATE TABLE comentarios(
id INT,
usuario_id INT,
post_id INT,
texto VARCHAR(55),
fecha DATE,
PRIMARY KEY (id),
FOREIGN KEY (usuario_id) REFERENCES usuario(id),
FOREIGN KEY (post_id) REFERENCES post(id)
);


    usuario_id, post_id, texto, fecha)
    VALUES
    ('1', '3', '6', 'Este es el comentarios 1', '2020-07-08');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('2', '4', '2', 'Este es el comentarios 2', '2020-06-07');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('3', '6', '4', 'Este es el comentarios 3', '2020-06-16');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('4', '2', '13', 'Este es el comentarios 4', '2020-06-15');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('5', '6', '6', 'Este es el comentarios 5', '2020-05-14');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('6', '3', '3', 'Este es el comentarios 6', '2020-07-08');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('7', '6', '1', 'Este es el comentarios 7', '2020-05-22');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('8', '6', '7', 'Este es el comentarios 8', '2020-07-09');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('9', '8', '13', 'Este es el comentarios 9', '2020-06-30');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('10', '8', '6', 'Este es el comentarios 10', '2020-06-19');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('11', '5', '1', 'Este es el comentarios 11', '2020-05-09');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('12', '8', '15', 'Este es el comentarios 12', '2020-06-17');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('13', '1', '9', 'Este es el comentarios 13', '2020-05-01');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('14', '2', '5', 'Este es el comentarios 14', '2020-05-31');

    INSERT INTO comentarios
    (id, usuario_id, post_id, texto, fecha)
    VALUES
    ('15', '4', '3', 'Este es el comentarios 15', '2020-06-28');


-- Empezando la resolución de las preguntas

-- Seleccionar el correo, id y título de todos los post publicados por el usuario 5.

SELECT id, email, titulo FROM usuario
INNER JOIN post
WHERE id = 5;


-- SELECT actor , pelicu(id,INSERT INTO comentariosla FROM reparto 
-- INNER JOIN peliculas
-- ON reparto.id = peliculas.id
-- WHERE peliculas.id = 2
-- LIMIT 1;

-- Poner la base de dato el de post \copy usuarios FROM 'usuarios.csv' cvs header

SELECT email, u.id, titulo FROM usuario u INNER JOIN post   
ON usuario.id = posts.usuario_id
WHERE u.id = 5;

SELECT B.email, A.id, A.texto FROM comentarios AS A INNER JOIN usuario AS B  
ON B.id = A.usuario_id
WHERE B.email != 'usuario06@hotmail.com';

SELECT * FROM usuario u LEFT JOIN  posts p ON u.id = p.usuario_id
WHERE  p.id IS NULL

SELECT com.*, p.*
FROM posts pokemones 
FULL OUTER JOIN comentarios comentarios
ON p.id = com.post_id;

SELECT u.* , p.fecha FROM usuario AS u
INNER JOIN post AS p ON u.id = p.usuario_id
WHERE EXTRACT(MONTH FROM p.fecha) = 06;


