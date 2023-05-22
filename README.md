# Cppmon: C++ Auto-compile and Run Monitor

Cppmon is a Python script that automatically monitors specified C++ source files for changes. Upon detecting a modification, it compiles and runs the updated code automatically. 

## How it works

Cppmon constantly monitors the last modified time and size of the provided C++ files. If a change is detected, it executes a shell command to compile the C++ file using g++. If the compilation is successful, it will run the compiled program.

The script also provides a simple console interface to manage the files being monitored and control the operation of the script.

## Installation

``` bash
git clone https://github.com/Jordi2233/cppmon.git
cd cppmon
chmod +x install.sh
./install.h [--install-global, install-local]
```
* --install-global - it will install cppmon globaly taht mean it will work as linux command
* --install-local it will create python venv and install cppmon localy

### Cppmon usage

####Global

``` bash
cppmon [file1, file2, ...]
```

####Local
``` bash
source venv/bin/activate
./cppmon [file1, file2, ...]
```

Here, file1.cpp and file2.cpp are the C++ files you want to monitor. You can provide up to 10 files to monitor at the same time.

Once the script is running, it provides an interactive command-line interface with the following options:

* rs : Restart the script and clear the screen.
* c : Clear the screen.
* q : Quit the script.
* h : Display the help menu.
* lf : List the files currently being monitored.
* af : Add a file to the monitoring list. Follow this command with the name of the file you want to add. For example, af file3.cpp.
* rf : Remove a file from the monitoring list. Follow this command with the name of the file you want to remove. For example, rf file1.cpp.

## Credits
- [Jordi2233](https://github.com/Jordi2233)
