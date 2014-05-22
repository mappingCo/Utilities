INSTALL RUBY ON RAILS ON LINUX 
==============================

(taken from the Web Application Architectures [Coursera](https://www.coursera.org/course/webapplications)) mooc

### Install Dependencies

Install build essentials by opening up a terminal window and typing the following command:

```
sudo apt-get install build-essential
```

Next, install curl. In the terminal window type:

```
sudo apt-get install curl
```

Then, install Git. In the terminal window type:

```
sudo apt-get install git-core
```


### Installing RVM

RVM stands for Ruby Version Manager and allows you to install multiple versions of Ruby and switch between them easily. Even if you are only going to use one version, it's probably the simplest way to install Ruby.


To install RMV, in your terminal window run the command:

```
curl -L https://get.rvm.io | bash -s stable --ruby
```

In the terminal window, type the following in order to make RVM known in your bash sessions:

```
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
```

Finally, restart your bash session by closing and then reopening your terminal window.



### Using RVM

You can get a list of Ruby versions by running the following command in your terminal window:

```
rvm list known
```

The version of Ruby we will use is 2.1.0 and you can install it by using the following command in your terminal window:

```
rvm install ruby-2.1.0
```

Set this version as the default using the following command in your terminal window:

```
rvm use 2.1.0
```

You can then make sure Ruby is installed by running the following command in your terminal window:

```
ruby -v
```


Installing Rails

The latest version of Rails will be installed by issuing the following command.  From your terminal window type:

```
gem install rails
```


You can verify that it was installed correctly by running the following command in your terminal window:

```
rails -v
```

(This will check the current installed version of Rails, which should be 4.0 or later)


A litte bit of rails
======================

* Open console: $ irb
* Open rails console (dev env): $ rails c
* Start the server: $ rails s

* string interpolation:

```
name = "James Kirk", starship = "USS Enterprise"
"The captain of the #{starship} is #{name}"
```

### variables

* "var" 	Local variable
* "@var" 	Instance variable
* "@@var" 	Class variable
* "$var" 	Global variable

* hash (associative arrays)

```
 h = {:fname => "John", :lname => "Doe"}
 h[:fname]
 "John"
 ```


