# Linux_Commands

Custom commands for linux
The first is files_create, which allows you to choose between Python and C ++ files for authoring. The first parameter is the file type (py or cpp), the second is the number of files.

The second is cppmon, which allows you to run a script in the background that waits for C ++ files to change and automatically compiles and runs it in the console. Takes one parameter that is the full file name.

## Installation

``` bash
mkdir ~/bin
cd Downloads
git clone https://github.com/Jordi2233/Linux_Commands.git
cd Linux_Commands/
cp -r * ~/bin/
cp ~/.bash_profile ~/.bash_profile.copy
echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bash_profile
source ~/.bash_profile
```

### Cppmon usage

``` bash
cppmon filename.cpp
```

that will start waiting for changes on filename.cpp file

### files_create usage

``` bash
files_create py 10
```

that will create 10 files "Zad1.py Zad2.py ... Zad10.py"

TODO
====

-   Add reset functionality during runtime
-   Add ability to stop cppmon and restart it
-   Implement subprocesses
-   Make code more modular

Technologies
============
-   Python3
-   OS library
-   Subprocess library

https://github.com/Jordi2233/Linux_Commands.git
