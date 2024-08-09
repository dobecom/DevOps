
CREATE TABLE orders
(
  id         int8      NOT NULL GENERATED ALWAYS AS IDENTITY,
  user_id    int8      NOT NULL,
  name       varchar   NOT NULL,
  status     smallint  NOT NULL DEFAULT 0,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

COMMENT ON TABLE orders IS 'orders';

CREATE TABLE pays
(
  id         int8      NOT NULL GENERATED ALWAYS AS IDENTITY,
  user_id    int8      NOT NULL,
  name       varchar   NOT NULL,
  status     smallint  NOT NULL DEFAULT 0,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

COMMENT ON TABLE pays IS 'pays';

CREATE TABLE users
(
  id         int8      NOT NULL GENERATED ALWAYS AS IDENTITY,
  email      varchar   NOT NULL UNIQUE,
  password   varchar  ,
  name       varchar  ,
  status     smallint  NOT NULL DEFAULT 0,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

COMMENT ON TABLE users IS 'users';

ALTER TABLE orders
  ADD CONSTRAINT FK_users_TO_orders
    FOREIGN KEY (user_id)
    REFERENCES users (id);

ALTER TABLE pays
  ADD CONSTRAINT FK_users_TO_pays
    FOREIGN KEY (user_id)
    REFERENCES users (id);

CREATE INDEX status
  ON orders (status ASC);

CREATE INDEX status
  ON pays (status ASC);

