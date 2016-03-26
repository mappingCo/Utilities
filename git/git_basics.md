# git basics

### Viewing the Commit History

Specify your own log output format:

```
$ git log --pretty=format:"%h - %an, %ar : %s"
ca82a6d - Scott Chacon, 6 years ago : changed the version number
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
$ ./rename_author.sh
$ git push --force --tags origin 'refs/heads/*'
```
