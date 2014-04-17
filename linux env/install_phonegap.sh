#! /bin/bash
# https://gist.github.com/dirkk0/8414616
# installs Phonegap and dependencies in less than 5 minutes on a fresh Ubuntu 12.0.4


# install latest node
sudo add-apt-repository --yes ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install --yes nodejs

# install java
sudo apt-get -y install openjdk-7-jdk
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export PATH=${PATH}:${JAVA_HOME}/bin

# install ant
sudo apt-get --yes install ant

# install Android SDK
wget http://dl.google.com/android/android-sdk_r20-linux.tgz
tar -xvzf android-sdk_r20-linux.tgz

export PATH=${PATH}:~/android-sdk-linux/tools
export PATH=${PATH}:~/android-sdk-linux/platform-tools

# install expect for unattended installation
sudo apt-get -y install expect

# install packages, for reference see:
#   android list sdk --all

# install Platform-tools (2)
expect -c '
set timeout -1   ;
spawn android update sdk -u -a -t 2; 
expect { 
    "Do you accept the license" { exp_send "y\r" ; exp_continue }
    eof
}
'

# install Tools (1)
expect -c '
set timeout -1   ;
spawn android update sdk -u -a -t 1; 
expect { 
    "Do you accept the license" { exp_send "y\r" ; exp_continue }
    eof
}
'

# install Build-tools (3)
expect -c '
set timeout -1   ;
spawn android update sdk -u -a -t 3; 
expect { 
    "Do you accept the license" { exp_send "y\r" ; exp_continue }
    eof
}
'

# install 4.4.2 (10) a.k.a. KitKat
expect -c '
set timeout -1   ;
spawn android update sdk -u -a -t 10; 
expect { 
    "Do you accept the license" { exp_send "y\r" ; exp_continue }
    eof
}
'

# install 32-bit dependencies
# http://sixarm.com/about/ubuntu-apt-get-install-ia32-for-32-bit-on-64-bit.html
sudo apt-get install -y lib32gcc1 libc6-i386 lib32z1 lib32stdc++6
sudo apt-get install -y lib32ncurses5 lib32gomp1 lib32z1-dev lib32bz2-dev
sudo apt-get install -y g++-multilib

# phonegap
sudo npm install -g phonegap

# make exports persistent
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.bashrc
echo "export PATH=\${PATH}:\${JAVA_HOME}/bin" >> ~/.bashrc
echo "export PATH=\${PATH}:~/android-sdk-linux/tools" >> ~/.bashrc
echo "export PATH=\${PATH}:~/android-sdk-linux/platform-tools" >> ~/.bashrc
source ~/.bashrc
