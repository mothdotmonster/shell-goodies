# pure POSIX shell goodies
## fuzzysleep
a tool to prevent you and all your buddies from crashing the server at midnight on Sunday from crontab overloads, by sleeping for a random amount of time. designed mainly to be ran before cron jobs.

Q: why not just sleep for a set amount of time?  
A: the server would just get overloaded at a different time.

USAGE:  
```fuzzysleep [n]``` - sleep for 1-[n] seconds silently  
```fuzzysleep -v [n]``` - sleep for 1-[n] seconds and say how long  
```fuzzysleep -vv [n]``` - sleep for 1-[n] seconds with a progress bar  

## barge

a function that generates bars out of percentages, designed to be easy to read and modify as needed. ```barge.sh``` is an example script which does nothing, as an easy base to hack barge into your existing script.