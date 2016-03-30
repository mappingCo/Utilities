# git basics

### add credential cache

git-credential-cache - Helper to temporarily store passwords in memory and avoid enter user and password for 8 hours

https://git-scm.com/docs/git-credential-cache

```
git config --global credential.helper 'cache --timeout=28800'

```

### add

```
$ git add -A # stages All
$ git add . # stages new and modified, without deleted
$ git add -u # stages modified and deleted, without new
$ git add -p # review the difference before adding modified contents to the index

```

### Viewing the Commit History

Specify your own log output format:

```
$ git log --pretty=format:"%h - %an, %ar : %s %d"
ca82a6d - Scott Chacon, 6 years ago : changed the version number (HEAD, tag: v0.1.0, origin/master, origin/HEAD, master)
085bb3b - Scott Chacon, 6 years ago : removed unnecessary test
a11bef0 - Scott Chacon, 6 years ago : first commit
```


### Creating a tag

```
// create new tag with msg
$ git tag -a v0.2.0 -m "testing tags"

// list tags
$ git tag
$ git show v1.4

// see the tag data q
$ git show v0.2.0
tag v0.2.0
Tagger: user <user@mail.com>
Date:   Sat Mar 26 20:45:03 2016 +0100

testing tags

# git describe --tags
v0.2.0-1-g91f56aa
```

### pushing tags to github

By default, the git push command doesn’t transfer tags to remote servers. You will have to explicitly push tags to a shared server.

```
$ git push origin v0.2.0
```

### author

Github -- Use your private email address for every repository on your computer

https://help.github.com/articles/keeping-your-email-address-private/


```
git config --global user.email "sigon426@users.noreply.github.com"
git config --global user.name "sigon"
```

Rename author

https://help.github.com/articles/changing-author-info/

```
$ chmod a+x rename_author.sh
$ ./rename_author.sh
$ git push --force --tags origin 'refs/heads/*'
```
