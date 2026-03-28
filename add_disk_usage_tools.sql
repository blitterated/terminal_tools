BEGIN TRANSACTION;

-- dutree

INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'dutree', -- name
    'dutree', -- invocation
    'a tool to analyze file system usage written in Rust'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dutree'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://github.com/nachoparker/dutree' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dutree'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/nachoparker/dutree?tab=readme-ov-file#usage' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'dutree'), -- tool_id
    (SELECT id from tags WHERE name = 'Disk Usage') --tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'dutree'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    1.0  -- percentage
);


-- dirstat-rs


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'dirstat-rs', -- name
    'ds', -- invocation
    '(fastest?) disk usage cli, similar to windirstat.'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dirstat-rs'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/scullionw/dirstat-rs' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dirstat-rs'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/scullionw/dirstat-rs?tab=readme-ov-file#usage' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'dirstat-rs'), -- tool_id
    (SELECT id from tags WHERE name = 'Disk Usage') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'dirstat-rs'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    1.0  -- percentage
);


-- Parallel Disk Usage


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'Parallel Disk Usage', -- name
    'pdu', -- invocation
    'Highly parallelized, blazing fast directory tree analyzer'  -- description
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Repository'), -- url_type_id
    'https://github.com/KSXGitHub/parallel-disk-usage' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Homepage'), -- url_type_id
    'https://crates.io/crates/parallel-disk-usage' -- url
);

INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from tool_url_types WHERE type = 'Documentation'), -- url_type_id
    'https://github.com/KSXGitHub/parallel-disk-usage/blob/master/USAGE.md' -- url
);

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from tags WHERE name = 'Disk Usage') -- tag_id
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Rust'), -- language_id
    0.89  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'TypeScript'), -- language_id
    0.042  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Shell'), -- language_id
    0.042  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'PowerShell'), -- language_id
    0.012  -- percentage
);

INSERT INTO tools_languages_xref (
    tool_id,
    language_id,
    percentage
)
VALUES (
    (SELECT id from tools WHERE name = 'Parallel Disk Usage'), -- tool_id
    (SELECT id from implementation_languages WHERE name = 'Other'), -- language_id
    0.014  -- percentage
);

COMMIT;
