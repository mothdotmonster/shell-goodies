# pure POSIX shell goodies

## fuzzysleep
a tool to prevent you and all your buddies from crashing the server at midnight on Sunday from crontab overloads, by sleeping for a random amount of time.

USAGE:  
```fuzzysleep [n]``` - sleep for 1-[n] seconds silently  
```fuzzysleep -v [n]``` - sleep for 1-[n] seconds and say how long  
```fuzzysleep -vv [n]``` - sleep for 1-[n] seconds with a progress bar  

EXAMPLES:
```
0 0 * * * fuzzysleep 3600 ; your-script.sh
```

> but why not just sleep for a set amount of time?

because then the server would get overloaded at a different time. randomly sleeping will "flatten the curve" of all the heavy tasks you need to run regularly, but don't care exactly when.