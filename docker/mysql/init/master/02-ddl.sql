use do_my_db;

CREATE TABLE members
(
  id             INT         NOT NULL AUTO_INCREMENT COMMENT '고유키',
  email          VARCHAR(50) NOT NULL COMMENT '이메일',
  password       VARCHAR(60) NOT NULL COMMENT '비밀번호',
  name           VARCHAR(50) NULL     COMMENT '닉네임',
  created_by     VARCHAR(30) NOT NULL COMMENT '등록자',
  updated_by     VARCHAR(30) NULL     COMMENT '수정자',
  created_at     DATETIME    NOT NULL COMMENT '생성일시',
  updated_at     DATETIME    NULL     COMMENT '수정일시',
  PRIMARY KEY (id)
) COMMENT '회원';

ALTER TABLE members
  ADD CONSTRAINT UQ_email UNIQUE (email);

  -- public."user" definition

-- Drop table

-- DROP TABLE public."user";
