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

Use `ch00.md` through `ch15.md` in this order:

| Chapter | Title | Main coverage |
|---|---|---|
| 00 | Introduction | Hacking, history, leetspeak, the series progression, and how to learn. |
| 01 | Terminal and Shell | Terminal/shell/OS distinction with a labeled screen capture; terminal applications and features; Bash, zsh, PowerShell, cmd, and prompts; Level Up exploration. |
| 02 | Anatomy of a Command | Names, arguments, options, paths, built-ins, programs, aliases, cmdlets, command discovery, and help. Quoting, escaping, variables, expansion, substitution, and the arguments programs receive. Environment variables, PATH, executable lookup, package managers, and installation. |
| 03 | Filesystems | Filesystem navigation, roots, drives, home, paths, hidden files, extensions, and case sensitivity. File/directory creation, copying, moving, renaming, removal, recursion, overwrites, links, and junctions. |
| 04 | Stop Fighting the Keyboard | Cursor movement, editing, history, search, completion, multiline input, cancellation, and shortcut ownership. |
| 05 | Edit Something | Nano, Vim basics, VS Code from the shell, editing operations, plain text, encodings, and line endings. |
| 06 | Working with files | Pagers, file inspection, filename/content search, grep/rg/find, PowerShell equivalents, and regex vs. globbing. |
| 07 | Make Commands Work Together | Input/output/error, pipes, redirection, exit status, conditional execution, text filters, and object pipelines. |
| 08 | Who Can Do What? | Users, groups, ownership, UNIX permissions, Windows ACL basics, executable permissions, and elevation. |
| 09 | Programs That Keep Running | Processes, jobs, foreground/background execution, stopping programs, and resource inspection. |
| 10 | Make the Shell Yours | Startup files, profiles, aliases, functions, prompts, history, completion, key bindings, and configuration recovery. |
| 11 | From Commands to Scripts | Arguments, variables, conditions, loops, functions, exit codes, error handling, Bash/PowerShell scripts, and batch basics. |
| 12 | Work Across Machines | SSH, remote commands, transfers, downloads, connection troubleshooting, and persistent sessions with tmux. |
| 13 | Cross the OS Boundary | WSL, path conversion, shared files, encodings, line endings, archives, checksums, and BSD/GNU differences. |
| 14 | Keep Your Work | Git status/diff/add/commit/log, restoration, ignore rules, and keeping secrets out of repositories. |
| 15 | Earn Console Punk | A practical project combining exploration, editing, pipelines, scripting, troubleshooting, and version control. |

Plan appendices for command comparisons, shortcuts by shell/terminal, startup-file locations, and Vim survival keys.
Do not create empty chapter files merely to fill out this plan.
The former shell chapter is merged into Chapter 1 only through "Read the Prompt".
Do not restore its removed "Identify the Shell You Are Using" section or the material that followed it without a new request.

## Chapter outline

- start by motivating the concepts presented in the chapter
- list the concepts that will be presented
- give an abstract explanation of the concepts that works across operating systems. note differences when appropriate
- explain how the concepts work in the different environments with specific details and examples
- finish instructional chapters with Key Points and a **Level Up** section where n00bs can finish and hackers start exploring alternatives. Offer concrete tools and questions that encourage independent investigation.
- add exercises at the end in the form of `what does this do?`, `what is the problem?`, `why is it like this?`, `how do you ...?`


## Writing and Teaching

- direct explanations, short paragraphs, concrete examples, and a conversational voice.
- Avoid figurative phrasing in explanations, such as "Knowing the spelling is only half the job." State the behavior, reason, or action directly; prefer `form` and `see` or other more specific words rather than `shape` or `meet`
- Use one sentence per source line where practical, descriptive headings, fenced code blocks, and Pandoc citations backed by `n00b2punk/references.bib`.
- Use `::: {.tip}` callouts labeled **Tip**, **Trap**, or **Wut** when they help readers understand a detail.
- Explain new terms and commands before relying on them. Make commands copyable; distinguish typed commands from prompts and output.
- use `session` fences, prefix typed lines with `$ `, and place output on the following lines. Explain that `$ ` is a book marker, not something to type, including in Windows examples.
- Render sessions as shaded, outlined boxes with bold commands. HTML Copy commands buttons must omit the marker and output; mark non-executable prompt illustrations with `.no-copy`.
- Introduce Tip, Trap, and Wut in Chapter 0, following `~/git/go`. Use the matching bundled `images/*-callout.png` icons in callout boxes in PDF and HTML.
- Give Bash/zsh, PowerShell, and cmd examples accurate language labels. Do not imply that shared-looking names have shared semantics.
- Use a disposable practice directory for exercises that modify files. Explain destructive behavior when introducing it.
- Encourage readers to predict, run, inspect, change, and explain. Examples and AI are learning aids; successful output alone is not evidence of understanding.
- Cite definitions, historical claims, and relevant official technical documentation. Verify version-sensitive behavior with primary sources.

## Workflow

- Preserve the user's edits and treat the current manuscript as authoritative.
- Commit after every major edit, before starting the next major edit. Use a separate commit for project instructions and for each substantial chapter draft or revision, including its supporting references.
- Before committing, review the change and render affected Markdown with Pandoc/citeproc to check formatting and citation resolution.
- Check runnable examples in available shells when practical. Say which platforms were checked and which were verified only against documentation; do not claim Windows execution from a UNIX-only environment.
- Keep generated previews and temporary checks outside the source tree unless a build-output convention is added deliberately.
