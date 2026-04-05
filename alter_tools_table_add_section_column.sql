BEGIN TRANSACTION;

ALTER TABLE tools
ADD COLUMN section_tag_id INTEGER;

UPDATE tools
SET section_tag_id = sections.tag_id
FROM (SELECT tool_id, tag_id FROM tools_sections) AS sections
WHERE tools.id = sections.tool_id;

DROP TABLE tools_sections;

COMMIT;
