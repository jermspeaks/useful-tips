# You Don't Know Bash

Notes on the OSCON workshop on Bash.

Videos with Carl Albing from US Naval Academy

## Bash - Connections

stdout and stderr

```bash
cmd > outfile 2> errfile
cmd > logfile 2>&1
cmd 2>&1 | next command
cmd |& next command     # 4.x
```
