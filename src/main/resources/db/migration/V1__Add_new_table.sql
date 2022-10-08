CREATE TABLE yource_user (
  id SERIAL PRIMARY KEY,
  email varchar(100) not null,
  superuser boolean,
  staff boolean,
  active boolean,
  first_name varchar(100),
  last_name varchar(100)
);

CREATE TABLE yource_user_profile (
  yource_user_id int not null,
  phone varchar(100)  
);

ALTER TABLE yource_user_profile
  ADD CONSTRAINT fk_yource_user_yource_user_profile FOREIGN KEY (yource_user_id) REFERENCES yource_user (id);

INSERT INTO yource_user(email, superuser, staff, first_name, last_name)
VALUES ('pianojet@gmail.com', true, true, 'Justin', 'Taylor');

INSERT INTO yource_user_profile(yource_user_id, phone)
VALUES ((SELECT id from yource_user WHERE email='pianojet@gmail.com'), '410-802-7727');
