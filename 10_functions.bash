#!/usr/bin/env bash

greater_even () {
  [[ $1 -lt $2 ]] || return
  
  indent="$3"
  if [[ $(( $1 % 2 )) -eq 0 ]]; then
    i=0
    
    for ((i = 0; i < $indent; i++)); do
      echo -n ' '
    done
    echo $1
    
    indent=$(( indent + 1 ))
  fi
  
  greater_even $(( $1 + 1 )) $2 $indent
}

main () {
  echo $FUNCNAME
  greater_even $1 $2 1
}

main $1 $2

: '
FUNCTIONS (Exercise 10 of 11)  
   
In scripts we have the ability to define and call functions. As in any  
programming language, functions in bash are chunks of code, but there are  
other differences.  
 
In bash, functions are a sequence of commands grouped under a single name,  
that is the name of the function. Calling a function is the same as  
calling any other program, you just write the name and the function will  
be invoked.  
 
We can declare our own function this way:  
 
   my_func () {  
     # statements  
   }  
     
   my_func # call my_func  
 
We must declare functions before we can invoke them.  
 
Functions can take on arguments and return a result — exit code.  
Arguments, within functions, are treated in the same manner as arguments  
given to the script in [non-interactive](#non-interactive-mode) mode —  
using [positional parameters](#positional-parameters). A result code can  
be returned using the return command.  
 
Below is a function that takes a name and returns 0, indicating successful  
execution.  
 
   # function with params  
   greeting () {  
     if [[ -n $1 ]]; then  
       echo "Hello, $1!"  
     else  
       echo "Hello, unknown!"  
     fi  
     return 0  
   }  
     
   greeting World  # Hello, World!  
   greeting        # Hello, unknown!  
 
The return command without any arguments returns the exit code of the last  
executed command. Above, return 0 will return a successful exit code 0.  
 
We can also declare a variable local to a single function using the local  
keyword. Doing so causes the variable to disappear when the function  
exits.  
 
   local local_var="Im a local value"  
 
## THE CHALLENGE  
 
Create a file named functions.bash.  
 
The problem is almost the same as in previous exercise. You receive two  
positional parameters and should output all even numbers in range between  
them. To do this, function with any name that will print these numbers  
using recursion. Also declare function main that will be print the value  
of $FUNCNAME and call your function.  
 
In other words, you should build tree of even numbers. On the top of the  
tree should be a name of main function. Other elements must be a even  
numbers. Each new elements of tree should have indentation that is equal  
to depth (one level is one spaces  ).  
 
Example:  
 
   ./loops.bash 10 17  
 
Output:  
 
   main  
    10  
     12  
      14  
       16  
 
Use -n with echo to output something on the same line.

##################

You may use functions to create your own commands in terminal. To do that,  
just define functions somewhere in your ~/.bashrc file (~/.bash_profile,  
~/.zshrc for Zsh, etc). For example:  
 
   # ...  
   # other ~/.bashrc settings  
   # ...  
     
   # Make directory and jump inside  
   md() {  
     mkdir -p $1 && cd $1  
   }  
 
After that, update your settings using . ~/.bashrc and use this command as  
any other:  
 
   ~ $ md Projects  
   ~/Projects $  
 
## Aliases  
 
By the way, sometimes you should type a long command sequence and to do  
something. If you often do this, you may want define an alias. Alias is  
essentially like a keyboard shortcut, a means of avoiding typing a long  
command sequence.  
 
For example, if you often type a ls -alF command feel free to define alias  
in the ~/.bashrc file:  
 
   # ...  
   # other ~/.bashrc settings  
   # ...  
     
   alias ll='ls -alF'  
 
Update your settings using . ~/.bashrc and now you can use ll command  
instead of long ls -alF.
'