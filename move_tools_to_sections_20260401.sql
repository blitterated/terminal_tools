BEGIN TRANSACTION;


-- ANSI Graphics Tools


INSERT INTO tags (name) VALUES ('ANSI Graphics Tools');

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Chafa'), -- tool_id
    (SELECT id from tags WHERE name = 'ANSI Graphics Tools') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Chafa'), -- tool_id
    (SELECT id from tags WHERE name = 'ANSI Graphics Tools') -- tag_id
);


-- Dot File Managers


INSERT INTO tags (name) VALUES ('Dot File Managers');

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'chezmoi'), -- tool_id
    (SELECT id from tags WHERE name = 'Dot File Managers') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'chezmoi'), -- tool_id
    (SELECT id from tags WHERE name = 'Dot File Managers') -- tag_id
);


-- File Processors


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'csvlens'), -- tool_id
    (SELECT id from tags WHERE name = 'File Processors') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'csvlens'), -- tool_id
    (SELECT id from tags WHERE name = 'File Processors') -- tag_id
);


-- File System Navigation


INSERT INTO tags (name) VALUES ('File System Navigation');

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ranger'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Navigation') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ranger'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Navigation') -- tag_id
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Yazi'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Navigation') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Yazi'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Navigation') -- tag_id
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'zoxide'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Navigation') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'zoxide'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Navigation') -- tag_id
);


-- File System Search


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'fselect'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Search') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'fselect'), -- tool_id
    (SELECT id from tags WHERE name = 'File System Search') -- tag_id
);


-- Music Players


INSERT INTO tags (name) VALUES ('Music Players');

INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'cmus'), -- tool_id
    (SELECT id from tags WHERE name = 'Music Players') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'cmus'), -- tool_id
    (SELECT id from tags WHERE name = 'Music Players') -- tag_id
);


-- Session Managers


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Zellij'), -- tool_id
    (SELECT id from tags WHERE name = 'Session Managers') -- tag_id
);

INSERT INTO tools_sections (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Zellij'), -- tool_id
    (SELECT id from tags WHERE name = 'Session Managers') -- tag_id
);

COMMIT;
