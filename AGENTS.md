# Project

This project contains books and tools that help students develop hacker skills.
The book series is called *way of the hax0r*.
Hacking means exploring the limits of what is possible in a spirit of playful cleverness, as described in Richard Stallman's [On Hacking](https://stallman.org/articles/on-hacking.html).
The emphasis is on understanding, experimenting, building, and the creative spirit of hackathons.
Security intrusion and black-hat/white-hat training are outside this series' scope.

The series progression is **n00b → console punk → hacker & modder → guru → 1337 hax0r**.
These are playful milestones for the series, not an established industry ranking.
We skip script kiddie: blindly copying commands or AI output is a dead end for learning.
Build understanding and independent problem-solving skills layer by layer.

## Current Book

*n00b to console punk* lives in `n00b2punk/`.
The reader should become comfortable with UNIX shells and Windows shells, terminal applications, command composition, editors, and filesystem work on Windows, macOS, and Linux.

- Use Bash and zsh for the UNIX track and PowerShell for the main Windows track.
- Cover Command Prompt (`cmd.exe`) explicitly, including its syntax and limitations; do not assume all Windows shells are PowerShell.
- Teach shared concepts once, then provide clearly labeled examples for each relevant shell.
- Explain meaningful differences rather than presenting commands as interchangeable aliases. In particular, distinguish UNIX text pipelines from PowerShell object pipelines.
- Distinguish terminal features, shell editing features, operating-system behavior, and external tools.
- State version or configuration dependencies for shortcuts and commands. Separate Windows PowerShell 5.1 from PowerShell 7 when behavior differs.
- Introduce WSL as an additional environment, not a replacement for learning native Windows shells.

## Chapter Plan

Use `ch00.md` through `ch19.md` in this order:

| Chapter | Title | Main coverage |
|---|---|---|
| 00 | Introduction | Hacking, history, leetspeak, the series progression, and how to learn. |
| 01 | Meet Your Terminal | Terminal/shell/OS distinction; terminal applications; tabs, panes, profiles, clipboard, scrollback, search, and display settings. |
| 02 | Meet Your Shell | Bash, zsh, PowerShell, and cmd; identification, versions, prompts, sessions, first commands, and exit. |
| 03 | Anatomy of a Command | Names, arguments, options, paths, built-ins, programs, aliases, cmdlets, command discovery, and help. |
| 04 | Stop Fighting the Keyboard | Cursor movement, editing, history, search, completion, multiline input, cancellation, and shortcut ownership. |
| 05 | Where Am I? | Filesystem navigation, roots, drives, home, paths, hidden files, extensions, and case sensitivity. |
| 06 | Make, Move, Copy, Remove | File/directory creation, copying, moving, renaming, removal, recursion, overwrites, links, and junctions. |
| 07 | Edit Something | Nano, Vim basics, VS Code from the shell, editing operations, plain text, encodings, and line endings. |
| 08 | Find Things and Read Them | Pagers, file inspection, filename/content search, grep/rg/find, PowerShell equivalents, and regex vs. globbing. |
| 09 | What the Shell Does to Your Command | Quoting, escaping, variables, expansion, substitution, and the arguments programs receive. |
| 10 | Make Commands Work Together | Input/output/error, pipes, redirection, exit status, conditional execution, text filters, and object pipelines. |
| 11 | Your Environment and Your Tools | Environment variables, PATH, executable lookup, package managers, installation, and version conflicts. |
| 12 | Who Can Do What? | Users, groups, ownership, UNIX permissions, Windows ACL basics, executable permissions, and elevation. |
| 13 | Programs That Keep Running | Processes, jobs, foreground/background execution, stopping programs, and resource inspection. |
| 14 | Make the Shell Yours | Startup files, profiles, aliases, functions, prompts, history, completion, key bindings, and configuration recovery. |
| 15 | From Commands to Scripts | Arguments, variables, conditions, loops, functions, exit codes, error handling, Bash/PowerShell scripts, and batch basics. |
| 16 | Work Across Machines | SSH, remote commands, transfers, downloads, connection troubleshooting, and persistent sessions with tmux. |
| 17 | Cross the OS Boundary | WSL, path conversion, shared files, encodings, line endings, archives, checksums, and BSD/GNU differences. |
| 18 | Keep Your Work | Git status/diff/add/commit/log, restoration, ignore rules, and keeping secrets out of repositories. |
| 19 | Earn Console Punk | A practical project combining exploration, editing, pipelines, scripting, troubleshooting, and version control. |

Plan appendices for command comparisons, shortcuts by shell/terminal, startup-file locations, and Vim survival keys.
Do not create empty chapter files merely to fill out this plan.

## Writing and Teaching

- Match the Markdown books in `~/git/cpp` and `~/git/go`: direct explanations, short paragraphs, concrete examples, and a conversational voice.
- Use one sentence per source line where practical, descriptive headings, fenced code blocks, and Pandoc citations backed by `n00b2punk/references.bib`.
- Use `::: {.tip}` callouts labeled **Tip**, **Trap**, or **Wut** when they help readers understand a detail.
- Explain new terms and commands before relying on them. Make commands copyable; distinguish typed commands from prompts and output.
- Give Bash/zsh, PowerShell, and cmd examples accurate language labels. Do not imply that shared-looking names have shared semantics.
- Finish instructional chapters with Key Points, a hands-on Try It, a modification challenge, and a troubleshooting exercise.
- Use a disposable practice directory for exercises that modify files. Explain destructive behavior when introducing it.
- Encourage readers to predict, run, inspect, change, and explain. Examples and AI are learning aids; successful output alone is not evidence of understanding.
- Cite definitions, historical claims, and relevant official technical documentation. Verify version-sensitive behavior with primary sources.

## Workflow

- Preserve the user's edits and treat the current manuscript as authoritative.
- Commit after every major edit, before starting the next major edit. Use a separate commit for project instructions and for each substantial chapter draft or revision, including its supporting references.
- Before committing, review the change and render affected Markdown with Pandoc/citeproc to check formatting and citation resolution.
- Check runnable examples in available shells when practical. Say which platforms were checked and which were verified only against documentation; do not claim Windows execution from a UNIX-only environment.
- Keep generated previews and temporary checks outside the source tree unless a build-output convention is added deliberately.
