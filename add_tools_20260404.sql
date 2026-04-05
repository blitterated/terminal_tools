BEGIN TRANSACTION;

INSERT INTO implementation_languages (name) VALUES ('Java');
INSERT INTO implementation_languages (name) VALUES ('Perl');
INSERT INTO implementation_languages (name) VALUES ('Tcl');

INSERT INTO tags (name) VALUES ('Alternative Core Utils');
INSERT INTO tags (name) VALUES ('Databases');
INSERT INTO tags (name) VALUES ('Database Clients');
INSERT INTO tags (name) VALUES ('Dev Env Managers');
INSERT INTO tags (name) VALUES ('File Search');
INSERT INTO tags (name) VALUES ('File Watchers');
INSERT INTO tags (name) VALUES ('Version Control');


-- SQLite


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'SQLite', -- name
    'sqlite3', -- invocation
    'Lightweight SQL database engine'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'SQLite'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://sqlite.org/src/dir?ci=trunk' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'SQLite'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://sqlite.org/index.html' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'SQLite'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://sqlite.org/docs.html' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'SQLite'), -- tool_id
    (SELECT id from tags WHERE name = 'Databases') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'SQLite'), -- tool_id
    (SELECT id from tags WHERE name = 'Databases') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'SQLite'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    1.0  -- percentage
);


-- libSQL


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'libSQL', -- name
    'libsql', -- invocation
    'libSQL is a fork of SQLite that is both Open Source, and Open Contributions.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/tursodatabase/libsql' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://turso.tech/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://docs.turso.tech/introduction' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from tags WHERE name = 'Databases') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from tags WHERE name = 'Databases') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.858  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.069  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Tcl'), -- language_id
    0.018  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'JavaScript'), -- language_id
    0.015  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Java'), -- language_id
    0.012  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.012  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'libSQL'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.016  -- percentage
);


-- rsql


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'rsql', -- name
    'rsql', -- invocation
    'Command line SQL interface for relational databases and common data file formats'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/theseus-rs/rsql' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://theseus-rs.github.io/rsql/rsql_cli/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://theseus-rs.github.io/rsql/rsql_cli/book/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from tags WHERE name = 'Database Clients') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from tags WHERE name = 'Database Clients') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.998  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'rsql'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.02  -- percentage
);


-- rainfrog


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'rainfrog', -- name
    'rainfrog', -- invocation
    'a database tool for the terminal'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'rainfrog'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/achristmascarl/rainfrog' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'rainfrog'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/achristmascarl/rainfrog?tab=readme-ov-file#usage' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'rainfrog'), -- tool_id
    (SELECT id from tags WHERE name = 'Database Clients') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'rainfrog'), -- tool_id
    (SELECT id from tags WHERE name = 'Database Clients') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'rainfrog'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.914  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'rainfrog'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.086  -- percentage
);


-- ripgrep


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'ripgrep', -- name
    'rg', -- invocation
    'ripgrep recursively searches directories for a regex pattern while respecting your gitignore'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/BurntSushi/ripgrep' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://ripgrep.dev/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://ripgrep.dev/docs/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.946  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Python'), -- language_id
    0.026  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.021  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ripgrep'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.07  -- percentage
);


-- The Silver Searcher


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'The Silver Searcher', -- name
    'ag', -- invocation
    'A code-searching tool similar to ack, but faster.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/ggreer/the_silver_searcher' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://geoff.greer.fm/ag/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/ggreer/the_silver_searcher/blob/master/doc/ag.1.md' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.881  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Perl'), -- language_id
    0.096  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.06  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'The Silver Searcher'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.033  -- percentage
);


-- ack


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'ack', -- name
    'ack', -- invocation
    'ack is a grep-like search tool optimized for source code.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/beyondgrep/ack3' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://beyondgrep.com/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://beyondgrep.com/documentation/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Perl'), -- language_id
    0.97  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ack'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.033  -- percentage
);


-- fzf


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'fzf', -- name
    'fzf', -- invocation
    'A command-line fuzzy finder'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/junegunn/fzf' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://junegunn.github.io/fzf/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://junegunn.github.io/fzf/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from tags WHERE name = 'File Search') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Go'), -- language_id
    0.663  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Ruby'), -- language_id
    0.208  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.083  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'fzf'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.046  -- percentage
);


-- entr


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'entr', -- name
    'entr', -- invocation
    'Run arbitrary commands when files change'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/eradman/entr' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://eradman.com/entrproject/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from tags WHERE name = 'File Watchers') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from tags WHERE name = 'File Watchers') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.62  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.29  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'entr'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.09  -- percentage
);


-- uv


INSERT INTO tools ( name,
    invocation,
    description
)
VALUES (
    'uv', -- name
    'uv', -- invocation
    'An extremely fast Python package and project manager, written in Rust.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/astral-sh/uv' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://docs.astral.sh/uv/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://docs.astral.sh/uv/guides/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from tags WHERE name = 'Dev Env Managers') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from tags WHERE name = 'Dev Env Managers') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.981  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Python'), -- language_id
    0.017  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'uv'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.02  -- percentage
);


-- git-filter-repo


INSERT INTO tools ( name,
    invocation,
    description
)
VALUES (
    'git-filter-repo', -- name
    'git-filter-repo', -- invocation
    'Quickly rewrite git repository history (filter-branch replacement)'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/newren/git-filter-repo' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from tags WHERE name = 'Version Control') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from tags WHERE name = 'Version Control') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Python'), -- language_id
    0.638  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.349  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'git-filter-repo'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Makefile'), -- language_id
    0.013  -- percentage
);


COMMIT;
