# pure POSIX shell goodies
these are a variety of somewhat useful things i have created that you can run in your command line shell. have fun with them.

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

## yodel
a tool that sits around printf to make it slightly less painful to print pretty text. personally i choose to suffer instead, but you may find it useful if you desire to make text-based things in the shell directly

## THermnag
removes the license nag from ThunderHTMLedit. download the xpi from [them](http://betterbird.eu/addons/index.html) and run it through the script.

USAGE: ```thermnag.sh (ThunderHTMLEdit.xpi)```
