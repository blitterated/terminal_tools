CREATE TABLE tools (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  invocation TEXT,
  url_home TEXT,
  url_documentation TEXT,
  url_repository TEXT,
  description TEXT NOT NULL
);

CREATE TABLE tags (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  is_section INTEGER NOT NULL DEFAULT FALSE
);

CREATE TABLE tools_tags_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  tag_id INTEGER NOT NULL,
  UNIQUE(tool_id, tag_id)
);

CREATE TABLE implementation_languages (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

INSERT INTO implementation_languages (name) VALUES ('Other');
INSERT INTO implementation_languages (name) VALUES ('C');
INSERT INTO implementation_languages (name) VALUES ('C++');
INSERT INTO implementation_languages (name) VALUES ('Go');
INSERT INTO implementation_languages (name) VALUES ('JavaScript');
INSERT INTO implementation_languages (name) VALUES ('Lua');
INSERT INTO implementation_languages (name) VALUES ('Markdown');
INSERT INTO implementation_languages (name) VALUES ('PowerShell');
INSERT INTO implementation_languages (name) VALUES ('Python');
INSERT INTO implementation_languages (name) VALUES ('Ruby');
INSERT INTO implementation_languages (name) VALUES ('Rust');
INSERT INTO implementation_languages (name) VALUES ('Shell');
INSERT INTO implementation_languages (name) VALUES ('TypeScript');
INSERT INTO implementation_languages (name) VALUES ('Zig');

CREATE TABLE tools_languages_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  language_id INTEGER NOT NULL,
  percentage REAL NOT NULL,
  UNIQUE(tool_id, language_id)
);

CREATE TABLE tool_urls(
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  url_type_id INTEGER NOT NULL,
  UNIQUE(tool_id, tag_id)
);

CREATE TABLE tool_url_types(
  id INTEGER PRIMARY KEY,
  type TEXT NOT NULL UNIQUE
);

INSERT INTO tool_url_types (type) VALUES ('Homepage');
INSERT INTO tool_url_types (type) VALUES ('Repository');
INSERT INTO tool_url_types (type) VALUES ('Documentation');

CREATE TABLE tools_tool_urls_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  url_id INTEGER NOT NULL,
  UNIQUE(tool_id, url_id)
);




