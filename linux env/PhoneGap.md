# install Java Developer Kit (JDK)

```
sudo apt-get install openjdk-6-jdk
```

set Java-6 to be the default version

```
sudo update-alternatives --config java
```

type selecction number 1 ( /usr/lib/jvm/java-6-openjdk-i386/jre/bin/java)

### check
java -version

# download eclipse linux32.

```
cd ~/Downloads
sudo -s cp -r eclipse-standard-kepler-SR2-linux-gtk.tar.gz /usr/local
cd /usr/local
```


## give permisions on executable file
```
sudo -s chmod a+x eclipse-standard-kepler-SR2-linux-gtk.tar.gz
sudo -s tar xvzf eclipse-standard-kepler-SR2-linux-gtk.tar.gz
exit
```

## create simbolic link

```
cd /home/sigon/Desktop
ln -s /usr/local/eclipse/eclipse
```

# download the Android SDK for linux

```
cd ~/Downloads/
```

## copy android sdk to /opt
```
sudo -s cp -r android-sdk_r22.6.2-linux.tgz /opt
```

## unzip
cd /opt
sudo -s tar xvzf android-sdk_r22.6.2-linux.tgz

## change permisions

```
sudo -s chmod -R 755 /opt/android-sdk-linux

sudo -s subl /etc/profile
```

## add this lines in the end
export PATH=${PATH}:/opt/android-sdk-linux/tools
export PATH=${PATH}:/opt/android-sdk-linux/platform-tools

puede que en linux mint haya que escribirlo en subl ~/.bashrc
exit terminal
## open new terminal to aply changes

```
. /etc/profile
```

# install ADT plugin 
* go to /usr/local/eclipse and double click on the eclipse.exe
* Start Eclipse, then select Help > Install New Software
* Click Add, in the top-right corner.
In the Add Repository dialog that appears, enter "ADT Plugin" for the Name and the following URL for the Location:
 https://dl-ssl.google.com/android/eclipse/
* in the Available Software dialog, select the checkbox next to Developer Tools and click Next.
* In the next window, you'll see a list of the tools to be downloaded. Click Next.
* Read and accept the license agreements, then click Finish.
If you get a security warning saying that the authenticity or validity of the software can't be established, click OK.
* When the installation completes, restart Eclipse

# Configure the ADT Plugin

* alert: location of the android SDK has not been setup in the preferences

* Once Eclipse restarts, you must specify the location of your Android SDK directory:

* In the "Welcome to Android Development" window that appears, select Use existing SDKs.
* Browse and select the location of the Android SDK directory you recently downloaded and unpacked.
existing location: /opt/android-sdk-linux
* Click Next.
* Your Eclipse IDE is now set up to develop Android apps, but you need to add the latest SDK platform tools and an Android platform to your environment. To get these packages for your SDK, continue to Adding Platforms and Packages.

## download and install: android sdk build-tools, sdk platform-tools..
in eclipse go to window/Android SDK y AVD Manager->Paquetes instalados y haz clic en “Actualizar todo

```
cd /opt/android-sdk-linux/tools
sudo -s
./android
```

it will open the android SDK manager, select packages and install

# create Android Virtual Device [http://developer.android.com/tools/devices/managing-avds.html]

* go to /usr/local/eclipse and double click on the eclipse.exe
* on window > Android virtual device Manager > New
* AVD Name: Mi_AVD
* target: Android 4.4.2 -API level 19
* 
Ahora desplázate hacia abajo en el cuadro que dice “Skin” y haz clic en “Resolución”, introduce los siguientes números 420x580 y selecciona Crear AVD, esto creará un AVD (emulador) para el programa de prueba


# install nodeJS

```
sudo apt-get install nodejs
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make nodejs
```

nodejs --version
v0.10.21
¿?
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install npm

# install ant

```
sudo apt-get install ant
```

# install phonegap
```
sudo npm install -g phonegap
```

# create a proyect 
By default, the phonegap create script generates a skeletal web-based application

```
phonegap create myApp com.mappingandco.myApp myApp
cd myApp
phonegap run android
```

or 

In a terminal window, navigate to the bin directory within the android subfolder of the Cordova distribution.
Type in ./create <project_folder_path> <package_name> <project_name> then press "Enter"

<project_folder_path> is the path to your new Cordova Android project
<package_name> is the package name, e.g. com.YourCompany.YourAppName
<project_name> is the project name, e.g. YourApp (Must not contain spaces)













http://es.wikihow.com/instalar-Android-en-Ubuntu-Linux-con-Eclipse-IDE

http://visuallybs.com/blog/0112/09/11/developing-with-phonegap/

http://docs.phonegap.com/en/2.3.0/guide_getting-started_android_index.md.html#Getting%20Started%20with%20Android

http://briantford.com/blog/angular-phonegap.html

http://devgirl.org/2013/06/10/quick-start-guide-phonegap-and-angularjs/