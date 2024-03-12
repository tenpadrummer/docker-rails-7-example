-- initialize database
DROP DATABASE IF EXISTS development;
DROP DATABASE IF EXISTS test;

-- create database
CREATE DATABASE development;
CREATE DATABASE test;

-- switch database
\c development