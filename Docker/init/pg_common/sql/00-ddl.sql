-- public."user" definition

-- Drop table

-- DROP TABLE public."user";

CREATE TABLE "user" (
	created timestamp NOT NULL DEFAULT now(),
	updated timestamp NOT NULL DEFAULT now(),
	id serial4 NOT NULL,
	username varchar NOT NULL,
	email varchar NOT NULL,
	image varchar NOT NULL DEFAULT 'https://sample.png'::character varying,
	"password" varchar NOT NULL,
	CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id)
);
CREATE UNIQUE INDEX "IDX_e12875dfb3b1d92d7d7c5377e2" ON "user" USING btree (email);