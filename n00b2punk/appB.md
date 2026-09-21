# Shortcuts by Shell and Terminal

Defaults only; Chapter 4 explains who owns each key and Chapter 10 how to change them.

## Terminal Applications

| Action | Windows Terminal | macOS Terminal | GNOME Terminal |
|---|---|---|---|
| New tab | `Ctrl+Shift+T` | `Cmd+T` | `Ctrl+Shift+T` |
| Close tab | `Ctrl+Shift+W` | `Cmd+W` | `Ctrl+Shift+W` |
| Next tab | `Ctrl+Tab` | `Cmd+Shift+]` | `Ctrl+Page Down` |
| Copy selection | `Ctrl+Shift+C` | `Cmd+C` | `Ctrl+Shift+C` |
| Paste | `Ctrl+Shift+V` | `Cmd+V` | `Ctrl+Shift+V` |
| Find | `Ctrl+Shift+F` | `Cmd+F` | `Ctrl+Shift+F` |
| Split pane | `Alt+Shift+D` | `Cmd+D` (same session) | none |
| Command palette | `Ctrl+Shift+P` | none | none |
| Larger or smaller text | `Ctrl+=`, `Ctrl+-` | `Cmd+=`, `Cmd+-` | `Ctrl+=`, `Ctrl+-` |

## Terminal Driver Keys on UNIX

These act before the shell sees a character; `stty -a` shows the assignments.

| Key | Effect |
|---|---|
| `Ctrl+C` | Interrupt the foreground program (INT) |
| `Ctrl+Z` | Suspend the foreground program (TSTP); `fg` resumes it |
| `Ctrl+D` | End of input; exits the shell at an empty prompt |
| `Ctrl+S`, `Ctrl+Q` | Pause and resume output |
| `Ctrl+\` | Quit with a core dump (QUIT) |

## Shell Line Editors

| Action | Readline and ZLE (Emacs mode) | PSReadLine Emacs mode | PSReadLine Windows mode | Command Prompt |
|---|---|---|---|---|
| Start of line | `Ctrl+A`, `Home` | `Ctrl+A`, `Home` | `Home` | `Home` |
| End of line | `Ctrl+E`, `End` | `Ctrl+E`, `End` | `End` | `End` |
| Back or forward a word | `Alt+B`, `Alt+F` | `Alt+B`, `Alt+F` | `Ctrl+Left`, `Ctrl+Right` | `Ctrl+Left`, `Ctrl+Right` |
| Delete to start of line | `Ctrl+U` | `Ctrl+U` | `Ctrl+Home` | `Ctrl+Home` |
| Delete to end of line | `Ctrl+K` | `Ctrl+K` | `Ctrl+End` | `Ctrl+End` |
| Delete previous word | `Ctrl+W` | `Ctrl+W` | `Ctrl+Backspace` | `Ctrl+Backspace` |
| Delete next word | `Alt+D` | `Alt+D` | `Ctrl+Delete` | `Ctrl+Delete` |
| Paste deleted text | `Ctrl+Y` | `Ctrl+Y` | `Ctrl+Y` | none |
| Undo | `Ctrl+_` | `Ctrl+_` | `Ctrl+Z` | none |
| Abandon the line | `Ctrl+C` | `Ctrl+C` | `Esc` | `Esc` |
| Clear the screen | `Ctrl+L` | `Ctrl+L` | `Ctrl+L` | `cls` |
| Previous or next command | `Up`, `Down` | `Up`, `Down` | `Up`, `Down` | `Up`, `Down` |
| Search history | `Ctrl+R` | `Ctrl+R` | `Ctrl+R`, `F8` | `F7` menu |
| Complete | `Tab` (list on second press) | `Tab` (list) | `Tab` (cycle), `Ctrl+Space` (menu) | `Tab` (cycle) |
| Insert a newline | `\` then Enter | `Shift+Enter` | `Shift+Enter` | `^` then Enter |

## Programs That Take Over the Screen

| Program | Quit | Help | Notes |
|---|---|---|---|
| `less`, `man` | `q` | `h` | `/text` searches, `n` next, `g` and `G` start and end |
| `more` | `q` | `h` | Space for next screen |
| `top` | `q` | `?` | `M` sorts by memory, `P` by CPU in most versions |
| `nano` | `Ctrl+X` | `Ctrl+G` | `Ctrl+O` saves |
| Vim | `Esc`, then `:q!` | `:help` | Appendix D |
| tmux | `Ctrl+B d` detaches | `Ctrl+B ?` | Prefix is `Ctrl+B` |
| GNU screen | `Ctrl+A d` detaches | `Ctrl+A ?` | Prefix is `Ctrl+A` |
