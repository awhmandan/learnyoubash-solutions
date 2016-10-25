#!/usr/bin/env bash

set -vn 
echo $@
touch $@
mkdir ./folder
mv file* ./folder
cd ./folder
ls
set +vn


: '
Okay, now you know how to write Bash scripts. But its not so easy.  
Sometimes we have troubles and Bash gives us tools for debugging scripts.  
If we want to run a script in debug mode, we use a special option in our  
scripts shebang:  
 
     
 
These options are settings that change shell behavior. The following table  
is a list of options which might be useful to you:  
 
Flag Name        Description  
---- ----------- ----------------------------------------------------------------------  
-f  noglob      Disable filename expansion (globbing).  
-i  interactive Script runs in interactive mode.  
-n  noexec      Read command, but dont execute them (syntax check).  
-t  —           Exit after first command.  
-v  verbose     Print each command to stdout before executing it.  
-x  xtrace      Print each command to stdout before executing it and expands commands.  
 
For example, we have script with -x option such as:  
 
   #!/bin/bash -x  
     
   for (( i = 0; i < 3; i++ )); do  
     echo $i  
   done  
 
This will print the value of the variables to stdout along with other  
useful information:  
 
   $ ./my_script  
   + (( i = 0 ))  
   + (( i < 3 ))  
   + echo 0  
   0  
   + (( i++  ))  
   + (( i < 3 ))  
   + echo 1  
   1  
   + (( i++  ))  
   + (( i < 3 ))  
   + echo 2  
   2  
   + (( i++  ))  
   + (( i < 3 ))  
 
Sometimes we need to debug a part of a script. In this case using the set  
is convenient. This command can enable and disable options. Options are  
turned on using - and turned off using +:  
 
   #!/bin/bash  
     
   echo "xtrace is turned off"  
   set -x  
   echo "xtrace is enabled"  
   set +x  
   echo "xtrace is turned off again"  
 
## THE CHALLENGE  
 
Create a file named debugging.bash.  
 
You will receive positional parameters. These positional parameters are  
filenames in format file[hash] (for example file177, file352). Your script  
should do the following things:  
 
 » Enable verbose and noexec options using set                                 
 » Output all received parameters using echo                                   
 » Create all these files                                                      
 » Create directory with name folder in current directory                      
 » Move all files to the folder                                                
 » Change directory to the folder                                              
 » List all files inside the folder                                            
 » Disable verbose and noexec options using set                                
 
Please, write one command per line without empty lines.  
 
You must know how to move one or more files or directories from one place  
to another. When we need to move files we use the mv command. The mv  
receives two arguments: the source and destination. If both filenames are  
on the same filesystem, this results in a simple file rename. When a  
filename is moved to an existing filename, the existing file is deleted.  
 
For example:  
 
   mv old new           # renames old to new.  
   mv file subdir/file  # moves file to subdir/file  
   mv name* subdir/     # moves all matched to name* files to the subdir  
 
Also, there is the cp command that copies one or more files or  
directories. The usage of cp is the same as the mv command.

######################################

You learned what is Bash and how to write your the first script. But, to  
be honest, that doesnt mean you are completely mastered the Bash. There  
are a lot of other things you have to learn.  
 
Heres a small list of other literature covering Bash:  
 
 » [bash-handbook](https://github.com/denysdovhan/bash-handbook) is a                                                                            
   handbook which was used to build this workshopper.                          
 » Bash man page. In many environments that you can run Bash, the help                                                                            
   system man can display information about Bash, by running the command                                                                            
   man bash.                                                                   
 » ["Bourne-Again SHell                                                                            
   manual"](https://www.gnu.org/software/bash/manual/) in many formats,                                                                            
   including HTML, Info, TeX, PDF, and Texinfo.  Hosted at                                                                            
   <https://www.gnu.org/>. As of 2016/01, this covers version 4.3, last                                                                            
   updated 2015/02/02.                                                         
 » [Bash 3.2 Man                                                                            
   page](https://developer.apple.com/library/mac/documentation/Darwin/Refe     
   rence/ManPages/man1/bash.1.html) hosted at Apples Mac Developer                                                                            
   Library site. As of 2016/01, this covers version 3.2, last updated                                                                            
   2006/09/28.
'