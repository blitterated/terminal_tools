PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE tools (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  invocation TEXT,
  url_home TEXT,
  url_documentation TEXT,
  url_repository TEXT,
  implementation_language TEXT,
  description TEXT NOT NULL
);
INSERT INTO tools VALUES(1,'bat',NULL,NULL,'https://github.com/sharkdp/bat?tab=readme-ov-file#how-to-use','https://github.com/sharkdp/bat','Rust','A cat(1) clone with wings.');
INSERT INTO tools VALUES(2,'chafa',NULL,'https://hpjansson.org/chafa/','https://hpjansson.org/chafa/man/','https://github.com/hpjansson/chafa','C','Terminal graphics for the 21st century.');
INSERT INTO tools VALUES(3,'chezmoi',NULL,'https://www.chezmoi.io/','https://www.chezmoi.io/','https://github.com/twpayne/chezmoi','Go','Manage your dotfiles across multiple diverse machines, securely.');
INSERT INTO tools VALUES(4,'cmus',NULL,'https://cmus.github.io/','https://github.com/cmus/cmus/wiki/','https://github.com/cmus/cmus','C','Small, fast and powerful console music player for Unix-like operating systems.');
INSERT INTO tools VALUES(5,'csvlens',NULL,NULL,'https://github.com/YS-L/csvlens/blob/main/README.md','https://github.com/YS-L/csvlens','Rust','Command line csv viewer');
INSERT INTO tools VALUES(6,'delta',NULL,'https://dandavison.github.io/delta/','https://dandavison.github.io/delta/','https://github.com/dandavison/delta','Rust','A syntax-highlighting pager for git, diff, grep, and blame output');
INSERT INTO tools VALUES(7,'eza',NULL,'https://eza.rocks/','https://github.com/eza-community/eza','https://github.com/eza-community/eza','Rust','A modern alternative to ls');
INSERT INTO tools VALUES(8,'fselect',NULL,'https://fselect.rocks/','https://fselect.rocks/docs/usage.html','https://github.com/jhspetersson/fselect','Rust','Find files with SQL-like queries');
INSERT INTO tools VALUES(9,'hyperfine',NULL,NULL,'https://github.com/sharkdp/hyperfine/blob/master/README.md','https://github.com/sharkdp/hyperfine','Rust','A command-line benchmarking tool');
INSERT INTO tools VALUES(10,'presenterm',NULL,'https://mfontanini.github.io/presenterm/','https://mfontanini.github.io/presenterm/','https://github.com/mfontanini/presenterm','Rust','A markdown terminal slideshow tool');
INSERT INTO tools VALUES(11,'procguard',NULL,NULL,'https://github.com/denispol/procguard/blob/main/docs/resource-limits.md','https://github.com/denispol/procguard','Rust','Process supervisor for macOS: memory limits, CPU throttling, native boosted macOS timeout.');
INSERT INTO tools VALUES(12,'ranger',NULL,'https://ranger.fm/','https://ranger.fm/documentation.html','https://github.com/ranger/ranger','Python','A VIM-inspired filemanager for the console');
INSERT INTO tools VALUES(13,'Starship',NULL,'https://starship.rs/','https://starship.rs/guide/','https://github.com/starship/starship','Rust','The minimal, blazing-fast, and infinitely customizable prompt for any shell!');
INSERT INTO tools VALUES(14,'taproom',NULL,NULL,'https://github.com/hzqtc/taproom/blob/main/README.md','https://github.com/hzqtc/taproom','Go','An interactive TUI for Homebrew');
INSERT INTO tools VALUES(15,'UUtils CoreUtils',NULL,'https://uutils.github.io/coreutils/','https://uutils.github.io/coreutils/docs/','https://github.com/uutils/coreutils','Rust','Cross-platform Rust rewrite of the GNU coreutils');
INSERT INTO tools VALUES(16,'yazi',NULL,'https://yazi-rs.github.io/','https://yazi-rs.github.io/docs/installation','https://github.com/sxyazi/yazi','Rust','Blazing fast terminal file manager written in Rust, based on async I/O.');
INSERT INTO tools VALUES(17,'zellij',NULL,'https://zellij.dev/','https://zellij.dev/documentation/','https://github.com/zellij-org/zellij','Rust','Terminal Workspace with Batteries Included (terminal multiplexer)');
INSERT INTO tools VALUES(18,'zoxide',NULL,'https://zoxide.org/','https://zoxide.org/tutorials/','https://github.com/ajeetdsouza/zoxide','Rust','A smarter cd command. Supports all major shells.');
INSERT INTO tools VALUES(19,'llmfit',NULL,NULL,'https://github.com/AlexsJones/llmfit/blob/main/README.md','https://github.com/AlexsJones/llmfit','Rust & Python','497 models. 133 providers. One command to find what runs on your hardware.');
INSERT INTO tools VALUES(20,'models',NULL,NULL,'https://github.com/arimxyer/models/blob/main/README.md','https://github.com/arimxyer/models','Rust','CLI and TUI for browsing AI models, benchmarks, and coding agents.');
INSERT INTO tools VALUES(21,'pywal',NULL,NULL,'https://jqlang.org/manual/','https://github.com/dylanaraps/pywal','Python','Generate and change color-schemes on the fly.');
INSERT INTO tools VALUES(22,'dua',NULL,'https://lib.rs/crates/dua-cli','https://lib.rs/crates/dua-cli','https://github.com/Byron/dua-cli','Rust','View disk space usage and delete unwanted data, fast.');
INSERT INTO tools VALUES(23,'dust',NULL,NULL,'https://github.com/bootandy/dust/blob/master/README.md','https://github.com/bootandy/dust','Rust','A more intuitive version of du in rust');
INSERT INTO tools VALUES(24,'dysk',NULL,'https://dystroy.org/dysk/','https://dystroy.org/dysk/','https://github.com/Canop/dysk','Rust','A linux utility to get information on filesystems, like df but better');
INSERT INTO tools VALUES(25,'fd',NULL,NULL,'https://github.com/sharkdp/fd/blob/master/README.md','https://github.com/sharkdp/fd','Rust','A simple, fast and user-friendly alternative to ''find''');
INSERT INTO tools VALUES(26,'ncdu',NULL,'https://dev.yorhel.nl/ncdu','','https://code.blicky.net/yorhel/ncdu/src/branch/master','C or Zig','Ncdu (NCurses Disk Usage) is a disk usage analyzer with a text-mode user interface.');
INSERT INTO tools VALUES(27,'glow',NULL,'https://charm.land/apps/','https://github.com/charmbracelet/glow/blob/master/README.md','https://github.com/charmbracelet/glow','Go','Render markdown on the CLI, with pizzazz!');
INSERT INTO tools VALUES(28,'tldr pages',NULL,'https://tldr.sh/','https://tldr.sh/tlrc/','https://github.com/tldr-pages/tldr','Markdown && (Python || Rust)','Collaborative cheatsheets for console commands');
INSERT INTO tools VALUES(29,'trash-cli',NULL,NULL,'https://github.com/andreafrancia/trash-cli/blob/master/README.rst','https://github.com/andreafrancia/trash-cli','Rust','Command line interface to the freedesktop.org trashcan.');
INSERT INTO tools VALUES(30,'wiki-tui',NULL,'https://github.com/Builditluc/wiki-tui','https://wiki-tui.net/latest/getting-started/installation/','https://github.com/Builditluc/wiki-tui','Rust','A simple and easy to use Wikipedia Text User Interface');
INSERT INTO tools VALUES(31,'wikiman',NULL,NULL,'https://github.com/filiparag/wikiman/blob/master/README.md','https://github.com/filiparag/wikiman','Shell','Wikiman is a universal offline documentation search engine for manual pages, tldr-pages, ArchWiki, Gentoo Wiki, DevDocs, and FreeBSD documentation');
INSERT INTO tools VALUES(32,'fff',NULL,NULL,'https://github.com/dylanaraps/fff/blob/master/README.md','https://github.com/dylanaraps/fff','C','A simple file manager written in bash');
INSERT INTO tools VALUES(33,'jq',NULL,'https://jqlang.org/','https://jqlang.org/manual/','https://github.com/jqlang/jq','C','Command-line JSON processor');
INSERT INTO tools VALUES(34,'yq',NULL,'https://mikefarah.gitbook.io/yq/','https://mikefarah.gitbook.io/yq/','https://github.com/mikefarah/yq','Go','yq is a portable command-line YAML, JSON, XML, CSV, TOML, HCL and properties processor');
INSERT INTO tools VALUES(35,'gitui',NULL,NULL,'https://github.com/gitui-org/gitui/blob/master/README.md','https://github.com/gitui-org/gitui','Rust','Blazing fast terminal-ui for git written in rust');
INSERT INTO tools VALUES(36,'lazygit',NULL,NULL,'https://github.com/jesseduffield/lazygit/blob/master/README.md','https://github.com/jesseduffield/lazygit','Go','simple terminal UI for git commands');
INSERT INTO tools VALUES(37,'Surge',NULL,NULL,'https://github.com/surge-downloader/Surge/tree/main/docs','https://github.com/surge-downloader/Surge','Go','Blazing fast TUI download manager built in Go for power users');
INSERT INTO tools VALUES(38,'xh',NULL,NULL,'https://github.com/ducaale/xh/blob/master/README.md','https://github.com/ducaale/xh','Rust','Friendly and fast tool for sending HTTP requests');
INSERT INTO tools VALUES(39,'btop',NULL,NULL,'https://github.com/aristocratos/btop/blob/main/README.md','https://github.com/aristocratos/btop','C++ & C','Resource monitor that shows usage and stats for processor, memory, disks, network and processes.');
INSERT INTO tools VALUES(40,'PowerTOP',NULL,'https://web.archive.org/web/20200119052408/https://01.org/powertop/','https://github.com/fenrus75/powertop/blob/master/README.md','https://github.com/fenrus75/powertop','C++','PowerTOP is a Linux tool to diagnose issues with power consumption and power management.');
INSERT INTO tools VALUES(41,'atuin',NULL,'https://atuin.sh/','https://docs.atuin.sh/cli/','https://github.com/atuinsh/atuin','Rust','Sync, search and backup shell history');
INSERT INTO tools VALUES(42,'mcfly',NULL,NULL,NULL,'https://github.com/cantino/mcfly','Rust','Fly through your shell history. Great Scott!');
INSERT INTO tools VALUES(43,'just',NULL,'https://just.systems/','https://just.systems/man/en/','https://github.com/casey/just','Rust','Just a command runner');
INSERT INTO tools VALUES(44,'kondo',NULL,NULL,'https://github.com/tbillington/kondo/blob/master/README.md','https://github.com/tbillington/kondo','Rust','Cleans dependencies and build artifacts from your projects.');
INSERT INTO tools VALUES(45,'mask',NULL,NULL,'https://github.com/jacobdeichert/mask/blob/master/README.md','https://github.com/jacobdeichert/mask','Rust','A CLI task runner defined by a simple markdown file');
INSERT INTO tools VALUES(46,'mprocs',NULL,NULL,'https://github.com/pvolok/mprocs/blob/master/README.md','https://github.com/pvolok/mprocs','Rust','');
INSERT INTO tools VALUES(47,'asdf',NULL,'https://asdf-vm.com/','https://asdf-vm.com/guide/getting-started.html','https://github.com/asdf-vm/asdf','Go & Shell','Extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more');
INSERT INTO tools VALUES(48,'bob',NULL,NULL,'https://github.com/MordechaiHadad/bob?tab=readme-ov-file#-installation','https://github.com/MordechaiHadad/bob','Rust','A version manager for neovim');
INSERT INTO tools VALUES(49,'mise',NULL,'https://mise.jdx.dev/','https://mise.jdx.dev/getting-started.html','https://github.com/jdx/mise','Rust & Shell','dev tools, env vars, task runner (nee rtx)');
CREATE TABLE tags (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);
INSERT INTO tags VALUES(1,'AI');
INSERT INTO tags VALUES(2,'Colors');
INSERT INTO tags VALUES(3,'Disk Usage');
INSERT INTO tags VALUES(4,'Documentation');
INSERT INTO tags VALUES(5,'File Managers');
INSERT INTO tags VALUES(6,'File Processors');
INSERT INTO tags VALUES(7,'Git');
INSERT INTO tags VALUES(8,'HTTP Request and Downloaders');
INSERT INTO tags VALUES(9,'Resource Monitors');
INSERT INTO tags VALUES(10,'Shell History');
INSERT INTO tags VALUES(11,'Task Runners');
INSERT INTO tags VALUES(12,'Version Managers');
CREATE TABLE tools_tags_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  tag_id INTEGER NOT NULL,
  UNIQUE(tool_id, tag_id)
);
INSERT INTO tools_tags_xref VALUES(1,19,1);
INSERT INTO tools_tags_xref VALUES(2,20,1);
INSERT INTO tools_tags_xref VALUES(3,21,2);
INSERT INTO tools_tags_xref VALUES(4,22,3);
INSERT INTO tools_tags_xref VALUES(5,23,3);
INSERT INTO tools_tags_xref VALUES(6,24,3);
INSERT INTO tools_tags_xref VALUES(7,25,3);
INSERT INTO tools_tags_xref VALUES(8,26,3);
INSERT INTO tools_tags_xref VALUES(9,27,4);
INSERT INTO tools_tags_xref VALUES(10,28,4);
INSERT INTO tools_tags_xref VALUES(11,29,4);
INSERT INTO tools_tags_xref VALUES(12,30,4);
INSERT INTO tools_tags_xref VALUES(13,31,4);
INSERT INTO tools_tags_xref VALUES(14,32,5);
INSERT INTO tools_tags_xref VALUES(15,33,6);
INSERT INTO tools_tags_xref VALUES(16,34,6);
INSERT INTO tools_tags_xref VALUES(17,35,7);
INSERT INTO tools_tags_xref VALUES(18,36,7);
INSERT INTO tools_tags_xref VALUES(19,37,8);
INSERT INTO tools_tags_xref VALUES(20,38,8);
INSERT INTO tools_tags_xref VALUES(21,39,9);
INSERT INTO tools_tags_xref VALUES(22,40,9);
INSERT INTO tools_tags_xref VALUES(23,41,10);
INSERT INTO tools_tags_xref VALUES(24,42,10);
INSERT INTO tools_tags_xref VALUES(25,43,11);
INSERT INTO tools_tags_xref VALUES(26,44,11);
INSERT INTO tools_tags_xref VALUES(27,45,11);
INSERT INTO tools_tags_xref VALUES(28,46,11);
INSERT INTO tools_tags_xref VALUES(29,47,12);
INSERT INTO tools_tags_xref VALUES(30,48,12);
INSERT INTO tools_tags_xref VALUES(31,49,12);
CREATE TABLE languages (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);
CREATE TABLE tools_languages_xref (
  id INTEGER PRIMARY KEY,
  tool_id INTEGER NOT NULL,
  language_id INTEGER NOT NULL,
  percentage REAL NOT NULL,
  UNIQUE(tool_id, language_id)
);
COMMIT;
