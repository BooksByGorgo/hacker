# Vim Survival Keys

Enough Vim to edit a file, save it, and get out.
Chapter 5 introduces the modes; `vimtutor` teaches the rest in half an hour. [@VimUsrGettingStarted]

## Modes

| Mode | You are here when | Get here with | Leave with |
|---|---|---|---|
| Normal | Vim starts; keys are commands | `Esc` | `i`, `a`, `o`, `v`, `:` |
| Insert | Bottom line shows `-- INSERT --`; typing inserts | `i`, `a`, `o` | `Esc` |
| Visual | Text is highlighted for a command | `v`, `V` | `Esc` |
| Command-line | Bottom line shows `:` | `:` | Enter runs, `Esc` cancels |

When in doubt, press `Esc` twice and start over.

## Get In and Out

| Keys | Effect |
|---|---|
| `vim file` | Open a file, creating it on save if it does not exist |
| `:w` | Save |
| `:q` | Quit; refuses if there are unsaved changes |
| `:wq` or `ZZ` | Save and quit |
| `:q!` | Quit and discard changes |
| `:e file` | Open another file |
| `:help topic` | Read help; `:q` closes the help window |

## Insert Text

| Keys | Insert |
|---|---|
| `i`, `a` | Before or after the cursor |
| `I`, `A` | At the start or end of the line |
| `o`, `O` | On a new line below or above |

## Move

| Keys | Move |
|---|---|
| `h`, `j`, `k`, `l` | Left, down, up, right; arrow keys work too |
| `w`, `b` | Next word, previous word |
| `0`, `$` | Start and end of line |
| `gg`, `G`, `42G` | First line, last line, line 42 |
| `Ctrl+D`, `Ctrl+U` | Half a page down or up |
| `/text` Enter, `n`, `N` | Search forward; next and previous match |
| `%` | Matching bracket |

## Change Text

| Keys | Effect |
|---|---|
| `x` | Delete the character under the cursor |
| `dd`, `3dd` | Delete one line, three lines |
| `dw`, `d$` | Delete to the end of the word, to the end of the line |
| `yy`, `p`, `P` | Copy a line; paste below or above |
| `u`, `Ctrl+R` | Undo, redo |
| `.` | Repeat the last change |
| `r`, `~` | Replace one character; toggle case |
| `>>`, `<<` | Indent, unindent |
| `:%s/old/new/g` | Replace everywhere in the file; add `c` to confirm each |

A count before a command repeats it: `5j` moves down five lines, `2dw` deletes two words.

## Visual Mode

Press `v` for characters, `V` for lines, or `Ctrl+V` for a block, move to extend the selection, then `d` to delete, `y` to copy, or `>` to indent.

## Useful Settings

Type these on the command line, or put them in `~/.vimrc` without the colon:

| Setting | Effect |
|---|---|
| `:set number` | Show line numbers |
| `:set paste` | Paste from the terminal without auto-indent; `:set nopaste` afterward |
| `:syntax on` | Color code by language |
| `:set hlsearch` | Highlight matches; `:noh` clears |
| `:set fileformat=unix` | Write LF line endings on save |
