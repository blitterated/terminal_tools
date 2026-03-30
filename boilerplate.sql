-- BOILERPLATE SQL TEMPLATES

BEGIN TRANSACTION;

INSERT INTO tags (name) VALUES ('');

INSERT INTO implementation_languages (name) VALUES ('');

INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    '', -- name
    '', -- invocation
    ''  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = ''), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    '' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = ''), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    '' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = ''), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    '' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = ''), -- tool_id
    (SELECT id from tags WHERE name = ''), -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = ''), -- tool_id
    (SELECT id from implementation_languages WHERE name = ''), -- language_id
    1.0  -- percentage
);

COMMIT;
