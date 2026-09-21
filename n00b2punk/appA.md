# Command Comparisons

The same intent in each shell.
Names that look alike do not share options or behavior; the chapter in the last column explains the differences.

| Task | Bash/zsh | PowerShell | Command Prompt | Chapter |
|---|---|---|---|---|
| Print text | `echo text`, `printf '%s\n' text` | `Write-Output text` | `echo text` | 2 |
| Show the current directory | `pwd` | `Get-Location` | `cd` | 3 |
| List a directory | `ls -l`, `ls -a` | `Get-ChildItem`, `-Force` | `dir`, `dir /a` | 3 |
| Change directory | `cd path` | `Set-Location path` | `cd path`, `cd /d D:\path` | 3 |
| Go home | `cd` | `Set-Location $HOME` | `cd /d "%USERPROFILE%"` | 3 |
| Create a directory | `mkdir -p a/b` | `New-Item -ItemType Directory a/b` | `mkdir a\b` | 3 |
| Create an empty file | `touch f` | `New-Item -ItemType File f` | `type nul > f` | 3 |
| Copy a file | `cp src dst` | `Copy-Item src dst` | `copy src dst` | 3 |
| Copy a tree | `cp -r src dst` | `Copy-Item src dst -Recurse` | `xcopy src dst /e /i` | 3 |
| Move or rename | `mv old new` | `Move-Item`, `Rename-Item` | `move`, `ren` | 3 |
| Remove a file | `rm f` | `Remove-Item f` | `del f` | 3 |
| Remove a tree | `rm -r d` | `Remove-Item d -Recurse` | `rd /s d` | 3 |
| Preview a destructive command | `-i`, or list the pattern first | `-WhatIf`, `-Confirm` | list the pattern first | 3 |
| Print a file | `cat f` | `Get-Content f` | `type f` | 6 |
| Page through a file | `less f` | `Get-Content f \| Out-Host -Paging` | `more f` | 6 |
| First or last lines | `head -n 5 f`, `tail -n 5 f` | `Get-Content f -TotalCount 5`, `-Tail 5` | `more +N f` | 6 |
| Count lines | `wc -l f` | `(Get-Content f \| Measure-Object -Line).Lines` | `find /c /v "" f` | 6 |
| Find files by name | `find . -name '*.md'` | `Get-ChildItem -Recurse -Filter *.md` | `dir /s /b *.md` | 6 |
| Find text in files | `grep -rn text .`, `rg text` | `Get-ChildItem -Recurse \| Select-String text` | `findstr /s /n text *` | 6 |
| Read a variable | `"$HOME"` | `$HOME`, `$env:PATH` | `%USERPROFILE%` | 2 |
| Set a session variable | `export NAME=value` | `$env:NAME = 'value'` | `set NAME=value` | 2 |
| Show `PATH` | `echo "$PATH"` | `$env:PATH` | `echo %PATH%` | 2 |
| What does a name run | `type -a name` | `Get-Command name -All` | `where.exe name`, `help name` | 2 |
| Get help | `man cmd`, `help builtin` | `Get-Help cmd -Examples` | `help cmd`, `cmd /?` | 2 |
| Search history | `Ctrl+R` | `Ctrl+R` | `F7` | 4 |
| Redirect output and errors | `> f`, `2> f`, `2>&1` | `> f`, `2> f`, `*> f` | `> f`, `2> f`, `2>&1` | 7 |
| Pipe | `a \| b` (text) | `a \| b` (objects) | `a \| b` (text) | 7 |
| Last exit status | `$?` | `$?`, `$LASTEXITCODE` | `%ERRORLEVEL%` | 7 |
| Run if the previous succeeded | `a && b` | `a && b` (PowerShell 7) | `a && b` | 7 |
| Show permissions | `ls -l` | `icacls f` (Windows) | `icacls f` | 8 |
| Change permissions | `chmod 755 f` | `icacls f /grant ...` | `icacls f /grant ...` | 8 |
| Run elevated | `sudo cmd` | `Start-Process pwsh -Verb RunAs` | Run as administrator | 8 |
| List processes | `ps aux` | `Get-Process` | `tasklist` | 9 |
| Stop a process | `kill PID`, `kill -KILL PID` | `Stop-Process -Id PID` | `taskkill /pid PID /f` | 9 |
| Run in the background | `cmd &` | `Start-Job { cmd }`, `Start-Process cmd` | `start /b cmd` | 9 |
| Define an alias | `alias ll='ls -alF'` | `Set-Alias ll Get-ChildItem` | `doskey ll=dir /a $*` | 10 |
| Define a function | `f() { ...; }` | `function f { ... }` | `call :label` | 10, 11 |
| Reload the startup file | `source ~/.bashrc` | `. $PROFILE` | none | 10 |
| Start without configuration | `bash --norc`, `zsh -f` | `pwsh -NoProfile` | `cmd /d` | 10 |
| Script arguments | `$1`, `$#`, `"$@"` | `param()`, `$args` | `%1`, `%*` | 11 |
| Download a file | `curl -O url`, `wget url` | `Invoke-WebRequest url -OutFile f` | `curl -O url` | 12 |
| Connect to a machine | `ssh user@host` | `ssh user@host` | `ssh user@host` | 12 |
| Copy to a machine | `scp f host:~/`, `rsync -av d/ host:d/` | `scp f host:~/` | `scp f host:~/` | 12 |
| Pack a directory | `tar -czf d.tar.gz d`, `zip -r d.zip d` | `Compress-Archive d d.zip`, `tar -czf` | `tar -czf d.tar.gz d` | 13 |
| Unpack | `tar -xzf f`, `unzip f` | `Expand-Archive f dest`, `tar -xzf f` | `tar -xzf f` | 13 |
| Checksum | `sha256sum f`, `shasum -a 256 f` | `Get-FileHash f` | `certutil -hashfile f SHA256` | 13 |
| Record a change | `git add f && git commit -m msg` | same | same | 14 |
