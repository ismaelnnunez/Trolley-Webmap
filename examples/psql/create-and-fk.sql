-- This is a comment.
CREATE TABLE "user" (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(255),
	password TEXT
    );

INSERT INTO "user" (name, email, password)
	VALUES (
		'Jebediah',
		'jeb101@jmail.com',
		'jebthealmondman!'
	);

INSERT INTO "user" (name, email, password)
	VALUES (
		'Alfredo',
		'doyalikeapples@gmail.com',
		'fettuccinex1x1'
	);

UPDATE "user" SET name = 'Jeb' WHERE id = 1;

INSERT INTO "user" (name, email, password)
	VALUES (
		'Fred',
		'doyalikeapples@gmail.com',
		'fettuccinex1x1'
	);

DELETE FROM "user" WHERE id = 3;

CREATE TABLE post (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	content TEXT,
	user_id INT,
		CONSTRAINT fk_user
			FOREIGN KEY (user_id)
			REFERENCES "user" (id)
    );

SELECT * FROM "user";

INSERT INTO post (name, content, user_id)
    VALUES ('Is this bike worth the drive?',
            'Just found this bike on CL.
            Do you guys think its worth the drive?', 1);

INSERT INTO post (name, content, user_id)
    VALUES ('Bikes R cool',
            'Dont you guys love bices', 1);

SELECT
        "user".*, post.id,
        post.name AS title,
        post.content,
        post.user_id
    FROM "user"
    JOIN post ON post.user_id = "user".id;
