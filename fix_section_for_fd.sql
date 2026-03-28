-- Fix section for fd command
SELECT
    t.id AS "tool.id"
  , t.name AS "tool.name"
  , ttx.id AS "xref.id"
  , tg.id AS "tag.id"
  , tg.name AS "tag.name"
FROM tools t
LEFT JOIN tools_tags_xref ttx on t.id = ttx.tool_id
LEFT JOIN tags tg on ttx.tag_id = tg.id
WHERE t.name = 'fd';

INSERT INTO tags (name, is_section) VALUES ('File System Search', TRUE);

UPDATE tools_tags_xref
SET tag_id = (SELECT tg.id from tags tg where tg.name = 'File System Search')
WHERE id = 7;
