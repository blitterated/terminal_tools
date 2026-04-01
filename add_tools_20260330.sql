BEGIN TRANSACTION;

--CREATE TABLE tools_sections (
--  id INTEGER PRIMARY KEY,
--  tool_id INTEGER NOT NULL,
--  tag_id INTEGER NOT NULL,
--  UNIQUE(tool_id)
--);


-- doxx


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'doxx', -- name
    'doxx', -- invocation
    'Expose the contents of .docx files without leaving your terminal. Fast, safe, and smart — no Office required!'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    '' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/bgreenwell/doxx#-usage' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from tags WHERE name = 'Documentation') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from tags WHERE name = 'Documentation') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.287  -- percentage
);

INSERT INTO implementation_languages (name) VALUES ('Makefile');

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Makefile'), -- language_id
    0.7  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'doxx'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.013  -- percentage
);


-- hygg


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'hygg', -- name
    'hygg', -- invocation
    'Simplifying the way you read. Minimalistic Vim-like TUI document reader.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'hygg'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/kruseio/hygg' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'hygg'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/kruseio/hygg/blob/main/docs/README.md' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'hygg'), -- tool_id
    (SELECT id from tags WHERE name = 'Documentation') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'hygg'), -- tool_id
    (SELECT id from tags WHERE name = 'Documentation') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'hygg'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.99  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'hygg'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.01  -- percentage
);


-- ttyd


INSERT INTO tags (name) VALUES ('Session Managers');

INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'ttyd', -- name
    'ttyd', -- invocation
    'Share your terminal over the web'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/tsl0922/ttyd' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://tsl0922.github.io/ttyd/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://tsl0922.github.io/ttyd/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from tags WHERE name = 'Session Managers') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from tags WHERE name = 'Session Managers') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'C'), -- language_id
    0.56  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'TypeScript'), -- language_id
    0.264  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.064  -- percentage
);

INSERT INTO implementation_languages (name) VALUES ('CMake');

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'CMake'), -- language_id
    0.048  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'JavaScript'), -- language_id
    0.041  -- percentage
);

INSERT INTO implementation_languages (name) VALUES ('SCSS');

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'SCSS'), -- language_id
    0.014  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'ttyd'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.09  -- percentage
);


-- headscale


INSERT INTO tags (name) VALUES ('Networking');

INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'headscale', -- name
    'headscale', -- invocation
    'An open source, self-hosted implementation of the Tailscale control server'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/juanfont/headscale' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://headscale.net/stable/' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://headscale.net/stable/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from tags WHERE name = 'Networking') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from tags WHERE name = 'Networking') -- tag_id
);
INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Go'), -- language_id
    0.985  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'headscale'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.015  -- percentage
);


-- pitchfork


INSERT INTO tags (name) VALUES ('Process Managers');

INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'pitchfork', -- name
    'pitchfork', -- invocation
    'Pitchfork is a CLI for managing daemons with a focus on developer experience.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/jdx/pitchfork' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://pitchfork.jdx.dev' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://pitchfork.jdx.dev/cli/' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from tags WHERE name = 'Process Managers') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from tags WHERE name = 'Process Managers') -- tag_id
);
INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.962  -- percentage
);

INSERT INTO implementation_languages (name) VALUES ('CSS');

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'CSS'), -- language_id
    0.021  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.014  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'TypeScript'), -- language_id
    0.02  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'pitchfork'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.01  -- percentage
);

COMMIT;
