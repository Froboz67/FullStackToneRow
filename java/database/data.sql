BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('user1','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt4oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');

INSERT INTO tonerow (name, starting_pitch_value, pzero, pone, ptwo, pthree, pfour, pfive, psix, pseven, peight, pnine, pten, peleven, user_id) VALUES
('string-quartet-4-schoenberg', 2, 0, 11, 7, 8, 3, 1, 2, 10, 6, 5, 4, 9, 1),
('tritone-funtone', 6, 0, 6, 1, 7, 2, 8, 3, 9, 4, 10, 5, 11, 1);

COMMIT TRANSACTION;