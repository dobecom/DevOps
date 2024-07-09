USE do_my_db;

INSERT INTO members (email, password, name, created_by, updated_by, created_at, updated_at)
VALUES 
	('admin@google.com', 'password', 'admin', 'system', null, now(), null),
    ('steve@google.com', 'password','steve', 'system', null, now(), null)
;