-- Tools and URLs
SELECT
    t.name AS "tool"
  , ut.type AS "link type"
  , u.url AS "link"
FROM tool_urls u
INNER JOIN tools t on t.id = u.tool_id
INNER JOIN tool_url_types ut on ut.id = u.url_type_id
ORDER BY LOWER(t.name), ut.type;


-- Tools and Languages
SELECT
    t.name AS "tool"
  , tlx.percentage * 100 AS "%"
  , il.name AS "lang"
FROM tools t
INNER JOIN tools_languages_xref tlx on t.id = tlx.tool_id
INNER JOIN implementation_languages il on tlx.language_id = il.id
ORDER BY LOWER(t.name), tlx.percentage ;


-- Tools by Section
SELECT
    t.id AS "id"
  , t.name AS "tool"
  , COALESCE(tg.name, '(default)') AS "section"
FROM tools t
LEFT JOIN tools_sections ts on t.id = ts.tool_id
LEFT JOIN tags tg on ts.tag_id = tg.id
   OR tg.id IS NULL
ORDER BY tg.name, LOWER(t.name);


-- Tool IDs, names, invocations, and repos
SELECT
    t.id AS "tool id"
  , t.name AS "tool name"
  , t.invocation AS "invocation"
  , u.url AS "repository"
FROM tools t
INNER JOIN tool_urls u on t.id = u.tool_id
INNER JOIN tool_url_types ut on ut.id = u.url_type_id
WHERE ut.type = 'Repository'
ORDER BY LOWER(t.name);
