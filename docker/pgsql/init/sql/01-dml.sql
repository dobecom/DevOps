INSERT INTO users (email,"password","name",status,created_at,updated_at) VALUES
	 ('test1@gmail.com','$2b$10$axe7d1exvmNfIxlR0RJOPu6cC56nhPgOALK9ToW19iexvBPlJznPe','test1',1,'2024-08-09 17:21:28.81532','2024-08-09 17:21:28.81532'),
	 ('test2@gmail.com','$2b$10$axe7d1exvmNfIxlR0RJOPu6cC56nhPgOALK9ToW19iexvBPlJznPe','test2',1,'2024-08-09 17:22:22.949788','2024-08-09 17:22:22.949788'),
	 ('test3@gmail.com','$2b$10$axe7d1exvmNfIxlR0RJOPu6cC56nhPgOALK9ToW19iexvBPlJznPe','test3',1,'2024-08-09 17:22:22.96018','2024-08-09 17:22:22.96018');

INSERT INTO pays (user_id,"name",status,created_at,updated_at) VALUES
	 (1,'pay1',1,'2024-08-09 17:23:18.694719','2024-08-09 17:23:18.694719'),
	 (1,'pay2',1,'2024-08-09 17:23:18.704068','2024-08-09 17:23:18.704068'),
	 (1,'pay3',1,'2024-08-09 17:23:18.70761','2024-08-09 17:23:18.70761');

INSERT INTO orders (user_id,"name",status,created_at,updated_at) VALUES
	 (1,'order1',1,'2024-08-09 17:22:41.646159','2024-08-09 17:22:41.646159'),
	 (1,'order2',1,'2024-08-09 17:22:57.518307','2024-08-09 17:22:57.518307'),
	 (1,'order3',1,'2024-08-09 17:22:57.527202','2024-08-09 17:22:57.527202');
