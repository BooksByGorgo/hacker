# Startup-File Locations

Where each shell and tool reads its configuration.
Chapter 10 explains when each file runs; Chapter 12 covers the SSH files and Chapter 14 the Git ones.

## Shells

| Shell | Interactive non-login | Login | Every invocation | Line editor |
|---|---|---|---|---|
| Bash | `~/.bashrc` | `~/.bash_profile`, else `~/.bash_login`, else `~/.profile` | `$BASH_ENV` if set | `~/.inputrc` |
| zsh | `~/.zshrc` | `~/.zprofile`, `~/.zshrc`, `~/.zlogin` | `~/.zshenv` | `~/.zshrc` (`bindkey`) |
| PowerShell 7 | `$PROFILE` | same | same | `$PROFILE` (`Set-PSReadLineKeyHandler`) |
| Windows PowerShell 5.1 | `$PROFILE` | same | same | same |
| Command Prompt | none | none | `AutoRun` registry value | none |

Logout files: `~/.bash_logout` and `~/.zlogout` run when a login shell exits.

## PowerShell Profile Paths

`$PROFILE` alone is the current-user, current-host file.
The other three are properties of the same variable.

| Scope | PowerShell 7 on Windows | Windows PowerShell 5.1 | PowerShell 7 on macOS and Linux |
|---|---|---|---|
| Current user, current host | `Documents\PowerShell\Microsoft.PowerShell_profile.ps1` | `Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` | `~/.config/powershell/Microsoft.PowerShell_profile.ps1` |
| Current user, all hosts | `Documents\PowerShell\profile.ps1` | `Documents\WindowsPowerShell\profile.ps1` | `~/.config/powershell/profile.ps1` |
| All users, current host | `$PSHOME\Microsoft.PowerShell_profile.ps1` | `$PSHOME\Microsoft.PowerShell_profile.ps1` | `$PSHOME/Microsoft.PowerShell_profile.ps1` |
| All users, all hosts | `$PSHOME\profile.ps1` | `$PSHOME\profile.ps1` | `$PSHOME/profile.ps1` |

Documents may be redirected to OneDrive on Windows; `$PROFILE` always shows the real path.
PSReadLine history lives in `(Get-PSReadLineOption).HistorySavePath`.

## Recovery

| Shell | Start without configuration |
|---|---|
| Bash | `bash --norc --noprofile` |
| zsh | `zsh -f` |
| PowerShell | `pwsh -NoProfile`, `powershell -NoProfile` |
| Command Prompt | `cmd /d` |

## Other Tools

| Tool | User file | Notes |
|---|---|---|
| Readline (Bash and others) | `~/.inputrc` | `bind -f ~/.inputrc` reloads |
| nano | `~/.nanorc` | |
| Vim | `~/.vimrc` | Neovim uses `~/.config/nvim/init.vim` or `init.lua` |
| Git | `~/.gitconfig` | `git config --global` writes it; per-repository settings in `.git/config` |
| SSH client | `~/.ssh/config` | Keys in `~/.ssh`, `known_hosts` beside them; directory mode `700`, private keys `600` |
| tmux | `~/.tmux.conf` | |
| Windows Terminal | `settings.json` via **Settings > Open JSON file** | |
| macOS Terminal | Profiles in **Terminal > Settings** | |
| GNOME Terminal | Profiles in **Preferences** | |
| VS Code | `settings.json` via the Command Palette | |
| EditorConfig | `.editorconfig` in the project | Read by many editors |
