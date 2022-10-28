# Linux_Comands
Custome comands for linux 
The first is files_create, which allows you to choose between Python and C ++ files for authoring. The first parameter is the file type (py or cpp), the second is the number of files. 

The second is cppmon, which allows you to run a script in the background that waits for C ++ files to change and automatically compiles and runs it in the console. Takes one parameter that is the full file name.

## Instalation
```
mkdir ~/bin
cd Downloads
git clone https://github.com/Jordi2233/Linux_Comands.git
cd Linux_Comands/
cp -r * ~/bin/
cp ~/.bash_profile ~/.bash_profile.copy
echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bash_profile
```
## Cppmon usage
```
cppmon filename.cpp #that will start wainting for changes on filename.cpp file
```
## files_create usage
```
files_create py 10 #that will create 10 files "Zad1-10.py"
```
