## NodeJS on Linux

```
sudo apt-get install nodejs
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make nodejs
```

## Installing Node.JS Using Node Version Manager

$ sudo apt-get update
$ sudo apt-get install build-essential libssl-dev
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash


# The script clones the nvm repository to ~/.nvm and adds the source line to your profile (~/.bash_profile, ~/.zshrc or ~/.profile).

# You can customize the install source, directory and profile using the NVM_SOURCE, NVM_DIR, and PROFILE variables. Eg: curl ... | NVM_DIR=/usr/local/nvm bash for a global install

# To gain access to the nvm functionality, you'll need to log out and log back in again, close and open terminal again

# list all versions
$ nvm ls-remote

# install version
nvm install 0.12.7


# Usually, nvm will switch to use the most recently installed version. You can explicitly tell nvm to use the version we just downloaded by typing:

$ nvm use 0.12.7
# When you install Node.js using nvm, the executable is called node. You can see the version currently being used by the shell by typing:

# node -v
v.0.12.
If you have multiple Node.js versions, you can see what is installed by typing:

$ nvm ls
# If you wish to default one of the versions, you can type:
vm
$ nvm alias default 0.12.7  <===================! IMPORTANT
# This version will be automatically selected when a new session spawns. You can also reference it by the alias like this:


$ nvm use default
# Each version of Node.js will keep track of its own packages and has npm available to manage these.





list all global packages
npm -g ls --depth=0

list of locals
npm ls --depth=0
