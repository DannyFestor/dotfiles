# installed tools

## CLI and TUI

- stow - a symlink farm manager > usage `stow --target=$HOME nvim` to symlink neovim config files to home directory
- atuin - a next-generation shell history in SQLite with search and sync
- tlrc (tldr) - a rust implementation of the tldr command line client
- tmux - terminal multiplexer
- neovim - a hyperextensible Vim-based text editor
- fzf - a command-line fuzzy finder > usage `fzf` to start fuzzy finder | `cat file.txt \| fzf` to fuzzy search in file
- eza - a modern replacement for ls
- zoxide - a smarter cd command
- fd - a simple, fast and user-friendly alternative to find
- ripgrep - a line-oriented search tool that recursively searches your current directory for a regex pattern
- bat - a cat clone with syntax highlighting and Git integration
- lazygit - a simple terminal UI for git commands
- lazydocker - a simple terminal UI for docker commands
- btop - a graphical and efficient alternative to htop
- ffmpeg - a complete, cross-platform solution to record, convert and stream audio and video
  - usage: `ffmpeg -i input.mp4 -vcodec libx264 -crf 20 output.mp4` to compress video file
- youtube-dl - a command-line program to download videos from YouTube.com and a few
  - usage: `youtube-dl <video_url>` to download video
- jq - a lightweight and flexible command-line JSON processor
- wget - a network utility to retrieve files from the web
- curl - a command-line tool for transferring data with URL syntax
- gzip - a file format and a software application used for file compression and decompression
- gh - GitHub’s official command line tool
- git - a free and open source distributed version control system
- cowsay - a configurable talking cow
- figlet - a program that creates large characters out of ordinary screen characters
- imagemagick - a software suite to create, edit, compose, or convert bitmap images
- lolcat - a tool to concatenate and print files in colorful rainbow-like output
- fortune - a program that displays a random message
- fastfetch - a fast system information tool
- gemini-cli - a command line client for Google Gemini LLM
- jpegoptim - a utility to optimize/compress JPEG files
  - usage: `jpegoptim --strip-all image.jpg` to remove all metadata from an image, `jpegoptim --max=80 image.jpg` to compress image to max 80% quality
- optipng - a PNG optimizer that recompresses image files to a smaller size, without losing any information
  - usage: `optipng -o7 image.png` to optimize PNG image, `optipng -strip all image.png` to remove all metadata from an image
- mise - a tool to manage multiple installations of programming languages and tools
- openapi-generator - a tool that can generate API client libraries, server stubs, documentation and configuration automatically given an OpenAPI Spec
- redocly-cli - a CLI tool for OpenAPI/Swagger definitions
- starship - a minimal, blazing-fast, and infinitely customizable prompt for any shell
- diff-so-fancy - a tool that makes git diffs human-readable | usage: `git diff --color | diff-so-fancy`
- exiftool - a platform-independent Perl library plus a command-line application for reading, writing and editing meta information in a wide variety of files
  - use `exiftool -all= image.jpg` to remove all metadata from an image
- ranger - a console file manager with VI key bindings
- superfile (`$ spf`)- a simple and fast file manager for the terminal
- scc - a very fast and accurate code counter
- duf - a disk usage utility
- rsync - a fast, versatile, remote (and local) file-copying tool
- dua-cli ( `$ dua-cli i` for interactive mode) - a disk usage analyzer with console interface
- speedtest-cli - a command line interface for testing internet bandwidth using speedtest.net
- newsboat - a terminal-based RSS/Atom feed reader
- httpie - a command line HTTP client
- navi - a command-line cheatsheet tool
- gh-dash (install with `gh extension install dlvhdr/gh-dash`, run with `gh dash`) - a terminal dashboard for GitHub
- posting - A powerful HTTP client that lives in your terminal. (like postman, insomnia but CLI)
- harlequin - The SQL IDE for Your Terminal
- serpl - search and replace keywords in an entire folder
- grex - a tool to generate regular expressions from user-provided test cases - `grex "foo bar" "baz qux"` -> `foo bar|baz qux` | --digits makes all numbers generic | -r handle repeated values ( \d\d -> \d+ )
- asciiquarium - display animated ASCII art in your terminal
- cbonsai - a bonsai tree that grows in your terminal
- jrnl - a simple command line journal application | `jrnl "My first entry"` to add an entry | `jrnl` to write entry | `jrnl --search keyword` to search entries

## Curls
- curl https://wttr.in/YourCity - weather information
- curl https://ipinfo.io - get your public IP information
- 

## Services
- caddy - a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
- valet - a Laravel development environment for Mac minimalists
- mailpit - a web and API based SMTP testing tool for developers
- meilisearch - a powerful, fast, open-source, easy-to-use search engine that fits effortlessly into your apps, websites, and workflow
- memcached - a high-performance, distributed memory object caching system
- minio - a high performance, distributed object storage system
- nginx - a high performance web server and reverse proxy
- ollama - run and manage large language models locally
- php - a popular general-purpose scripting language that is especially suited to web development
- typesense - an open source, typo tolerant search engine that delivers fast and relevant results out-of-the-box
- redis - an in-memory data structure store, used as a database, cache and message broker
- sqlite - a C library that provides a lightweight, disk-based database
- postgresql - a powerful, open source object-relational database system
- dnsmasq - a lightweight, easy to configure DNS forwarder and DHCP server

## Programming languages and tools
- go - an open source programming language that makes it easy to build simple, reliable, and efficient software
- node - a JavaScript runtime built on Chrome's V8 JavaScript engine
- bun - a fast all-in-one JavaScript runtime
- deno - a simple, modern, and secure runtime for JavaScript and TypeScript that uses V8 and is built in Rust
- php - a popular general-purpose scripting language that is especially suited to web development
- rust - a language empowering everyone to build reliable and efficient software
- dotnet - 
- java - a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible
- erlang - a programming language used to build massively scalable soft real-time systems with requirements on high availability
- gleam - a statically typed, compiled programming language for building scalable and maintainable applications
- ocaml / opam - a general-purpose programming language with an emphasis on expressiveness and safety
- python - a programming language that lets you work quickly and integrate systems more effectively
- ruby - a dynamic, open source programming language with a focus on simplicity and productivity
- zig

- pnpm - a fast, disk space efficient package manager
- yarn - a package manager that doubles down as project manager
- atlas - a database schema migration tool for Go
- composer - a dependency manager for PHP
- awscli - a unified tool to manage your AWS services
- gcloud

# GUI applications

- ghostty - a terminal emulator for macOS built using web technologies
- imageoptim - a GUI tool to optimize images
- logseq - a local-first, non-linear, markdown-based knowledge management and collaboration platform
- super-productivity - a todo list and time tracker app designed to boost your productivity
