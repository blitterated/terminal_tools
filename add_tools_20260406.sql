BEGIN TRANSACTION;

INSERT INTO tags (name) VALUES ('Novelty');


-- FIGlet


INSERT INTO tools (
    name,
    invocation,
    description,
    section_tag_id
)
VALUES (
    'FIGlet', -- name
    'figlet', -- invocation
    'FIGlet is a program for making large letters out of ordinary text', -- description
    (SELECT id from tags WHERE name = 'Novelty') -- section (tag_id)
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/cmatsuoka/figlet' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://www.figlet.org/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://www.figlet.org/figlet-man.html' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from tags WHERE name = 'Novelty') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.823  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.131  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.028  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'FIGlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Makefile'), -- language_id
    0.018  -- percentage
);


-- TOIlet


INSERT INTO tools (
    name,
    invocation,
    description,
    section_tag_id
)
VALUES (
    'TOIlet', -- name
    'toilet', -- invocation
    'The Other Implementation of figLET', -- description
    (SELECT id from tags WHERE name = 'Novelty') -- section (tag_id)
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/cacalabs/toilet' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'http://caca.zoy.org/wiki/toilet' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://linuxcommandlibrary.com/man/toilet' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from tags WHERE name = 'Novelty') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.727  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.146  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Makefile'), -- language_id
    0.075  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'TOIlet'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.052  -- percentage
);


-- No More Secrets


INSERT INTO tools (
    name,
    invocation,
    description,
    section_tag_id
)
VALUES (
    'No More Secrets', -- name
    'nms', -- invocation
    'A command line tool that recreates the famous data decryption effect seen in the 1992 movie Sneakers.',  -- description
    (SELECT id from tags WHERE name = 'Novelty') -- section (tag_id)
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'No More Secrets'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/bartobri/no-more-secrets' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'No More Secrets'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/bartobri/no-more-secrets?tab=readme-ov-file#usage' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'No More Secrets'), -- tool_id
    (SELECT id from tags WHERE name = 'Novelty') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'No More Secrets'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.907  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'No More Secrets'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.055  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'No More Secrets'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Makefile'), -- language_id
    0.038  -- percentage
);

COMMIT;

