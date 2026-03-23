
INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'bat',
    'bat',
    'A cat(1) clone with wings.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'bat'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/sharkdp/bat?tab=readme-ov-file#how-to-use'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'bat'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/sharkdp/bat'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'chafa',
    'chafa',
    'Terminal graphics for the 21st century.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'chafa'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://hpjansson.org/chafa/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'chafa'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://hpjansson.org/chafa/man/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'chafa'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/hpjansson/chafa'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'chezmoi',
    'chezmoi',
    'Manage your dotfiles across multiple diverse machines, securely.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'chezmoi'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://www.chezmoi.io/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'chezmoi'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://www.chezmoi.io/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'chezmoi'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/twpayne/chezmoi'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'cmus',
    'cmus',
    'Small, fast and powerful console music player for Unix-like operating systems.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'cmus'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://cmus.github.io/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'cmus'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/cmus/cmus/wiki/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'cmus'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/cmus/cmus'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'csvlens',
    'csvlens',
    'Command line csv viewer'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'csvlens'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/YS-L/csvlens/blob/main/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'csvlens'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/YS-L/csvlens'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'delta',
    'delta',
    'A syntax-highlighting pager for git, diff, grep, and blame output'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'delta'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://dandavison.github.io/delta/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'delta'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://dandavison.github.io/delta/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'delta'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/dandavison/delta'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'eza',
    'eza',
    'A modern alternative to ls'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'eza'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://eza.rocks/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'eza'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/eza-community/eza'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'eza'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/eza-community/eza'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'fselect',
    'fselect',
    'Find files with SQL-like queries'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fselect'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://fselect.rocks/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fselect'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://fselect.rocks/docs/usage.html'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fselect'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/jhspetersson/fselect'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'hyperfine',
    'hyperfine',
    'A command-line benchmarking tool'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'hyperfine'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/sharkdp/hyperfine/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'hyperfine'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/sharkdp/hyperfine'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'presenterm',
    'presenterm',
    'A markdown terminal slideshow tool'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'presenterm'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://mfontanini.github.io/presenterm/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'presenterm'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://mfontanini.github.io/presenterm/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'presenterm'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/mfontanini/presenterm'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'procguard',
    'procguard',
    'Process supervisor for macOS: memory limits, CPU throttling, native boosted macOS timeout.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'procguard'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/denispol/procguard/blob/main/docs/resource-limits.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'procguard'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/denispol/procguard'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'ranger',
    'ranger',
    'A VIM-inspired filemanager for the console'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ranger'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://ranger.fm/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ranger'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://ranger.fm/documentation.html'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ranger'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/ranger/ranger'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'Starship',
    'Starship',
    'The minimal, blazing-fast, and infinitely customizable prompt for any shell!'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Starship'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://starship.rs/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Starship'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://starship.rs/guide/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Starship'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/starship/starship'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'taproom',
    'taproom',
    'An interactive TUI for Homebrew'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'taproom'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/hzqtc/taproom/blob/main/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'taproom'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/hzqtc/taproom'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'UUtils CoreUtils',
    'UUtils CoreUtils',
    'Cross-platform Rust rewrite of the GNU coreutils'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'UUtils CoreUtils'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://uutils.github.io/coreutils/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'UUtils CoreUtils'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://uutils.github.io/coreutils/docs/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'UUtils CoreUtils'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/uutils/coreutils'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'yazi',
    'yazi',
    'Blazing fast terminal file manager written in Rust, based on async I/O.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'yazi'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://yazi-rs.github.io/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'yazi'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://yazi-rs.github.io/docs/installation'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'yazi'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/sxyazi/yazi'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'zellij',
    'zellij',
    'Terminal Workspace with Batteries Included (terminal multiplexer)'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'zellij'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://zellij.dev/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'zellij'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://zellij.dev/documentation/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'zellij'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/zellij-org/zellij'
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'zoxide',
    'zoxide',
    'A smarter cd command. Supports all major shells.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'zoxide'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://zoxide.org/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'zoxide'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://zoxide.org/tutorials/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'zoxide'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/ajeetdsouza/zoxide'
);


INSERT INTO tags (name, is_section) VALUES ('AI', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'llmfit',
    'llmfit',
    '497 models. 133 providers. One command to find what runs on your hardware.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'llmfit'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/AlexsJones/llmfit/blob/main/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'llmfit'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/AlexsJones/llmfit'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'llmfit'),
    (SELECT id from tags WHERE name = 'AI')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'models',
    'models',
    'CLI and TUI for browsing AI models, benchmarks, and coding agents.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'models'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/arimxyer/models/blob/main/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'models'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/arimxyer/models'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'models'),
    (SELECT id from tags WHERE name = 'AI')
);


INSERT INTO tags (name, is_section) VALUES ('Colors', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'pywal',
    'pywal',
    'Generate and change color-schemes on the fly.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'pywal'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://jqlang.org/manual/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'pywal'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/dylanaraps/pywal'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'pywal'),
    (SELECT id from tags WHERE name = 'Colors')
);


INSERT INTO tags (name, is_section) VALUES ('Disk Usage', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'dua',
    'dua',
    'View disk space usage and delete unwanted data, fast.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dua'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://lib.rs/crates/dua-cli'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dua'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://lib.rs/crates/dua-cli'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dua'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/Byron/dua-cli'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'dua'),
    (SELECT id from tags WHERE name = 'Disk Usage')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'dust',
    'dust',
    'A more intuitive version of du in rust'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dust'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/bootandy/dust/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dust'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/bootandy/dust'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'dust'),
    (SELECT id from tags WHERE name = 'Disk Usage')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'dysk',
    'dysk',
    'A linux utility to get information on filesystems, like df but better'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dysk'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://dystroy.org/dysk/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dysk'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://dystroy.org/dysk/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'dysk'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/Canop/dysk'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'dysk'),
    (SELECT id from tags WHERE name = 'Disk Usage')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'fd',
    'fd',
    'A simple, fast and user-friendly alternative to ''find'''
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fd'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/sharkdp/fd/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fd'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/sharkdp/fd'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'fd'),
    (SELECT id from tags WHERE name = 'Disk Usage')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'ncdu (C)',
    'ncdu (C)',
    'Ncdu (NCurses Disk Usage) is a disk usage analyzer with a text-mode user interface.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ncdu (C)'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://dev.yorhel.nl/ncdu'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ncdu (C)'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://code.blicky.net/yorhel/ncdu/src/branch/master'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ncdu (C)'),
    (SELECT id from tags WHERE name = 'Disk Usage')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'ncdu (Zig)',
    'ncdu (Zig)',
    'Ncdu (NCurses Disk Usage) is a disk usage analyzer with a text-mode user interface.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ncdu (Zig)'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://dev.yorhel.nl/ncdu'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'ncdu (Zig)'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://code.blicky.net/yorhel/ncdu/src/branch/zig'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'ncdu (Zig)'),
    (SELECT id from tags WHERE name = 'Disk Usage')
);


INSERT INTO tags (name, is_section) VALUES ('Documentation', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'glow',
    'glow',
    'Render markdown on the CLI, with pizzazz!'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'glow'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://charm.land/apps/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'glow'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/charmbracelet/glow/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'glow'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/charmbracelet/glow'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'glow'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'tldr',
    'tldr',
    'Collaborative cheatsheets for console commands'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://tldr.sh/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/tldr-pages/tldr#what-is-tldr-pages'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/tldr-pages/tldr'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'tldr-python-client',
    'tldr-python-client',
    'Official Python command-line client for tldr pages'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr-python-client'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://pypi.org/project/tldr/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr-python-client'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/tldr-pages/tldr-python-client?tab=readme-ov-file#usage'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr-python-client'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/tldr-pages/tldr-python-client'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'tldr-python-client'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'tlrc',
    'tlrc',
    'Official tldr client written in Rust.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tlrc'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://tldr.sh/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tlrc'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://tldr.sh/tlrc/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'tlrc'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/tldr-pages/tlrc'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'tlrc'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'trash-cli',
    'trash-cli',
    'Command line interface to the freedesktop.org trashcan.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'trash-cli'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/andreafrancia/trash-cli/blob/master/README.rst'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'trash-cli'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/andreafrancia/trash-cli'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'trash-cli'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'wiki-tui',
    'wiki-tui',
    'A simple and easy to use Wikipedia Text User Interface'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'wiki-tui'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://github.com/Builditluc/wiki-tui'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'wiki-tui'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://wiki-tui.net/latest/getting-started/installation/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'wiki-tui'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/Builditluc/wiki-tui'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'wiki-tui'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'wikiman',
    'wikiman',
    'Wikiman is a universal offline documentation search engine for manual pages, tldr-pages, ArchWiki, Gentoo Wiki, DevDocs, and FreeBSD documentation'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'wikiman'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/filiparag/wikiman/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'wikiman'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/filiparag/wikiman'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'wikiman'),
    (SELECT id from tags WHERE name = 'Documentation')
);


INSERT INTO tags (name, is_section) VALUES ('File Managers', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'fff',
    'fff',
    'A simple file manager written in bash'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fff'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/dylanaraps/fff/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'fff'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/dylanaraps/fff'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'fff'),
    (SELECT id from tags WHERE name = 'File Managers')
);


INSERT INTO tags (name, is_section) VALUES ('File Processors', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'jq',
    'jq',
    'Command-line JSON processor'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'jq'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://jqlang.org/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'jq'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://jqlang.org/manual/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'jq'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/jqlang/jq'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'jq'),
    (SELECT id from tags WHERE name = 'File Processors')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'yq',
    'yq',
    'yq is a portable command-line YAML, JSON, XML, CSV, TOML, HCL and properties processor'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'yq'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://mikefarah.gitbook.io/yq/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'yq'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://mikefarah.gitbook.io/yq/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'yq'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/mikefarah/yq'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'yq'),
    (SELECT id from tags WHERE name = 'File Processors')
);


INSERT INTO tags (name, is_section) VALUES ('Git', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'gitui',
    'gitui',
    'Blazing fast terminal-ui for git written in rust'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'gitui'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/gitui-org/gitui/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'gitui'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/gitui-org/gitui'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'gitui'),
    (SELECT id from tags WHERE name = 'Git')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'lazygit',
    'lazygit',
    'simple terminal UI for git commands'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'lazygit'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/jesseduffield/lazygit/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'lazygit'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/jesseduffield/lazygit'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'lazygit'),
    (SELECT id from tags WHERE name = 'Git')
);


INSERT INTO tags (name, is_section) VALUES ('HTTP Request and Downloaders', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'Surge',
    'Surge',
    'Blazing fast TUI download manager built in Go for power users'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Surge'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/surge-downloader/Surge/tree/main/docs'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'Surge'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/surge-downloader/Surge'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'Surge'),
    (SELECT id from tags WHERE name = 'HTTP Request and Downloaders')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'xh',
    'xh',
    'Friendly and fast tool for sending HTTP requests'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'xh'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/ducaale/xh/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'xh'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/ducaale/xh'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'xh'),
    (SELECT id from tags WHERE name = 'HTTP Request and Downloaders')
);


INSERT INTO tags (name, is_section) VALUES ('Resource Monitors', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'btop',
    'btop',
    'Resource monitor that shows usage and stats for processor, memory, disks, network and processes.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'btop'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/aristocratos/btop/blob/main/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'btop'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/aristocratos/btop'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'btop'),
    (SELECT id from tags WHERE name = 'Resource Monitors')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'PowerTOP',
    'PowerTOP',
    'PowerTOP is a Linux tool to diagnose issues with power consumption and power management.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'PowerTOP'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://web.archive.org/web/20200119052408/https://01.org/powertop/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'PowerTOP'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/fenrus75/powertop/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'PowerTOP'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/fenrus75/powertop'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'PowerTOP'),
    (SELECT id from tags WHERE name = 'Resource Monitors')
);


INSERT INTO tags (name, is_section) VALUES ('Shell History', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'atuin',
    'atuin',
    'Sync, search and backup shell history'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'atuin'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://atuin.sh/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'atuin'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://docs.atuin.sh/cli/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'atuin'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/atuinsh/atuin'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'atuin'),
    (SELECT id from tags WHERE name = 'Shell History')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'mcfly',
    'mcfly',
    'Fly through your shell history. Great Scott!'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mcfly'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/cantino/mcfly'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'mcfly'),
    (SELECT id from tags WHERE name = 'Shell History')
);


INSERT INTO tags (name, is_section) VALUES ('Task Runners', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'just',
    'just',
    'Just a command runner'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'just'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://just.systems/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'just'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://just.systems/man/en/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'just'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/casey/just'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'just'),
    (SELECT id from tags WHERE name = 'Task Runners')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'kondo',
    'kondo',
    'Cleans dependencies and build artifacts from your projects.'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'kondo'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/tbillington/kondo/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'kondo'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/tbillington/kondo'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'kondo'),
    (SELECT id from tags WHERE name = 'Task Runners')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'mask',
    'mask',
    'A CLI task runner defined by a simple markdown file'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mask'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/jacobdeichert/mask/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mask'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/jacobdeichert/mask'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'mask'),
    (SELECT id from tags WHERE name = 'Task Runners')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'mprocs',
    'mprocs',
    'Run multiple commands in parallel'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mprocs'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/pvolok/mprocs/blob/master/README.md'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mprocs'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/pvolok/mprocs'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'mprocs'),
    (SELECT id from tags WHERE name = 'Task Runners')
);


INSERT INTO tags (name, is_section) VALUES ('Version Managers', TRUE);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'asdf',
    'asdf',
    'Extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'asdf'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://asdf-vm.com/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'asdf'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://asdf-vm.com/guide/getting-started.html'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'asdf'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/asdf-vm/asdf'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'asdf'),
    (SELECT id from tags WHERE name = 'Version Managers')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'bob',
    'bob',
    'A version manager for neovim'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'bob'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://github.com/MordechaiHadad/bob?tab=readme-ov-file#-installation'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'bob'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/MordechaiHadad/bob'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'bob'),
    (SELECT id from tags WHERE name = 'Version Managers')
);


INSERT INTO tools (
    name,
    invocation,
    description
)
VALUES (
    'mise',
    'mise',
    'dev tools, env vars, task runner (nee rtx)'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mise'),
    (SELECT id from tool_url_types WHERE type = 'Homepage'),
    'https://mise.jdx.dev/'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mise'),
    (SELECT id from tool_url_types WHERE type = 'Documentation'),
    'https://mise.jdx.dev/getting-started.html'
);


INSERT INTO tool_urls (
    tool_id,
    url_type_id,
    url
)
VALUES (
    (SELECT id from tools WHERE name = 'mise'),
    (SELECT id from tool_url_types WHERE type = 'Repository'),
    'https://github.com/jdx/mise'
);


INSERT INTO tools_tags_xref (
    tool_id,
    tag_id
)
VALUES (
    (SELECT id from tools WHERE name = 'mise'),
    (SELECT id from tags WHERE name = 'Version Managers')
);

