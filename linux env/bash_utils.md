# Bash basics

Bash is a Unix shell and command language written by Brian Fox as a replacement for the Bourne shell


https://duckduckgo.com/?q=bash+cheatsheet&ia=cheatsheet&iax=1

### rm [OPTION]... FILE...

```
$ rm -rf repo_name

f, --force
    ignore nonexistent files and arguments, never prompt

-r, -R, --recursive
    remove directories and their contents recursively

-i     prompt before every removal

-d, --dir
    remove empty directories

-v, --verbose
    explain what is being done
```

### chmod

PERMISSION      COMMAND EXAMPLE   

 u   g   a
rwx rwx rwx     chmod 777 filename      
rwx rwx r-x     chmod 775 filename
rwx r-x r-x     chmod 755 filename
rw- rw- r--     chmod 664 filename
rw- r-- r--     chmod 644 filename

u = User
g = Group
a = All

r = Read
w = write
x = execute
- = no access

```
$ chmod 777 file  # (Give rwx permission to everybody)
$ chmod a+x file1 file2  # (Give execute permission to everybody)
$ chmod u=rx file        # (Give the owner rx permissions, not w)
