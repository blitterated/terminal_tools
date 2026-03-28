-- Tools and URLs
SELECT
    t.name as "tool"
  , ut.type as "link type"
  , u.url as "link"
FROM tool_urls u
INNER JOIN tools t on t.id = u.tool_id
INNER JOIN tool_url_types ut on ut.id = u.url_type_id
ORDER BY t.name, ut.type;


-- Tools and Languages
SELECT
    t.name as "tool"
  , tlx.percentage * 100 as "%"
  , il.name as "lang"
FROM tools t
INNER JOIN tools_languages_xref tlx on t.id = tlx.tool_id
INNER JOIN implementation_languages il on tlx.language_id = il.id
ORDER BY t.name, tlx.percentage ;


-- Tools by Section (a.k.a Tags)
SELECT
    t.name as "tool"
  , COALESCE(tg.name, '(default)') as "section"
FROM tools t
LEFT JOIN tools_tags_xref ttx on t.id = ttx.tool_id
LEFT JOIN tags tg on ttx.tag_id = tg.id
WHERE tg.is_section = TRUE
   OR tg.id IS NULL
ORDER BY tg.name, t.name;


-- Tool IDs, names, invocations, and repos
SELECT
    t.id as "tool id"
  , t.name as "tool name"
  , t.invocation as "invocation"
  , u.url as "repository"
FROM tools t
INNER JOIN tool_urls u on t.id = u.tool_id
INNER JOIN tool_url_types ut on ut.id = u.url_type_id
WHERE ut.type = 'Repository'
ORDER BY LOWER(t.name);











-- BOILERPLATE TEMPLATES

INSERT INTO tags (name, is_section) VALUES ('', TRUE);


INSERT INTO tools (
    name,
    invocation,
    url_home,
    url_documentation,
    url_repository,
    implementation_language,
    description
)
VALUES (
    '',
    NULL,
    '',
    '',
    '',
    '',
    ''
);
