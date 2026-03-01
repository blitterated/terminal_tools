CREATE TABLE tools (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  invocation TEXT NOT NULL,
  url_home TEXT,
  url_documentation TEXT,
  url_repository TEXT,
  description TEXT NOT NULL
);

CREATE TABLE tags (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE tools_tags_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  tag_id INTEGER NOT NULL,
);

CREATE TABLE languages (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE tools_languages_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  language_id INTEGER NOT NULL,
  percentage REAL NOT NULL
);
