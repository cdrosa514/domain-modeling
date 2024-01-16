-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;

-- CREATE TABLES

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER
);

CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  contact_id INTEGER,
  salesperson_id TEXT,
  activity_type TEXT,
  company_id TEXT,
  notes TEXT,
  date_time TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
  industry_id INTEGER
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT,
);