-- Database: platform

DROP DATABASE IF EXISTS citest;

-- ----------------------------
--  Roles Delete
-- ----------------------------
DROP ROLE IF EXISTS sqlwrite;
DROP ROLE IF EXISTS sqlread;
DROP ROLE IF EXISTS g_write;
DROP ROLE IF EXISTS g_read;

-- ----------------------------
--  Roles creation
-- ----------------------------
CREATE ROLE g_write LOGIN;
CREATE ROLE g_read LOGIN;

-- ----------------------------
--  Database creation
-- ----------------------------

CREATE DATABASE citest
	TEMPLATE template1
	OWNER g_write;

GRANT ALL ON DATABASE citest TO g_write;

ALTER USER g_write CREATEDB;


