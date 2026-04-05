-- Tools
SELECT t.name, t.description
FROM tools t
ORDER BY LOWER(t.name);


-- Tools and URLs
SELECT
    t.name AS "tool"
  , ut.type AS "link type"
  , u.url AS "link"
FROM tool_urls u
INNER JOIN tools t ON t.id = u.tool_id
INNER JOIN tool_url_types ut ON ut.id = u.url_type_id
ORDER BY LOWER(t.name), ut.type;


-- Implementation Languages
SELECT DISTINCT il.name
FROM implementation_languages il
ORDER BY LOWER(il.name);


-- Tools and Languages
SELECT
    t.name AS "tool"
  , tlx.percentage * 100 AS "%"
  , il.name AS "lang"
FROM tools t
INNER JOIN tools_languages_xref tlx ON t.id = tlx.tool_id
INNER JOIN implementation_languages il ON tlx.language_id = il.id
ORDER BY LOWER(t.name), tlx.percentage ;


-- Tools by Section
SELECT
    t.id AS "id"
  , t.name AS "tool"
  , COALESCE(tg.name, '(default)') AS "section"
FROM tools t
LEFT JOIN tools_sections ts ON t.id = ts.tool_id
LEFT JOIN tags tg ON ts.tag_id = tg.id
   OR tg.id IS NULL
ORDER BY tg.name, LOWER(t.name);


-- Tool IDs, names, invocations, and repos
SELECT
    t.id AS "tool id"
  , t.name AS "tool name"
  , t.invocation AS "invocation"
  , u.url AS "repository"
FROM tools t
INNER JOIN tool_urls u ON t.id = u.tool_id
INNER JOIN tool_url_types ut ON ut.id = u.url_type_id
WHERE ut.type = 'Repository'
ORDER BY LOWER(t.name);


-- List sections alphabetically
SELECT DISTINCT tg.name
FROM tags tg
INNER JOIN tools_sections ts ON tg.id = ts.tool_id 
ORDER BY LOWER(tg.name);





-- Dev Tooling for the Linux and macOS Terminal.md
--------------------------------------------------------------------------------
-- timeout - automatically stop long running commands
-- trash - sends files to OS' trash can instead of perma-deleting
-- gping - Graphical ping.
-- dasel - JSON, YAML, TOML, CSV TUI.
-- qsv - CSV for big files.
-- grex - Generate regexes from samples.
-- sq - Query SQL, JSON, SQL, Excel.
-- croc - Secure file sharing/sending.
-- FastFetch - NeoFetch clone.
-- Inav - Log file navigator and query tool.
-- sops - Encrypt/decrypt values only in a JSON, YAML, TOML, or .env file.
-- bottom - Yet another cross-platform graphical process/system monitor.
-- tokei - Count your code, quickly.
-- doggo - Command-line DNS Client for Humans.
-- fx - Terminal JSON viewer & processor
-- gum - A tool for glamorous shell scripts
-- lsd - The next gen ls command
-- viddy - A modern watch command.
-- duf - Disk Usage/Free Utility - a better ‘df’ alternative
-- resterm - Terminal API client for HTTP/GraphQL/gRPC
-- harlequin - The SQL IDE for Your Terminal
-- jj - Jujutsu. A Git-compatible VCS that is both simple and powerful
-- tailspin - A log file highlighter
-- lazydocker - The lazier way to manage everything docker
-- superfile - Pretty fancy and modern terminal file manager
-- hexly - A command-line hex viewer
-- taskwarrior-tui - taskwarrior-tui: A terminal user interface for taskwarrior
-- helix - A post-modern modal text editor.
-- age - A simple, modern and secure encryption tool
-- trippy - A network diagnostic tool
-- broot - Broot is a better way to navigate directories, find files, and launch commands.
-- ouch - Painless compression and decompression in the terminal
-- jless - jless is a command-line JSON viewer designed for reading, exploring, and searching through JSON data.
-- procs - A modern replacement for ps written in Rust
-- vd - VisiData is an interactive multitool for tabular data.