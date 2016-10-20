#!/usr/bin/env bash

if [[ $1 -lt 12 ]]; then
  echo "Good morning!"
elif [[ $1 -ge 12 && $1 -lt 18 ]]; then
  echo "Good afternoon!"
elif [[ $1 -lt 0 ]]; then
  echo "Error!"
elif [[ $1 -gt 24 ]]; then
  echo "Error!"
else
  echo "Good evening!"
fi

: '
if statements work the same as in other programming languages. If the  
expression within the braces is true, the code between then a nd fi is  
executed.  fi indicates the end of the conditionally executed code.  
 
   # Single-line  
   if [[ 1 -eq 1 ]]; then echo "true"; fi  
     
   # Multi-line  
   if [[ 1 -eq 1 ]]; then  
     echo "true"  
   fi  
 
Likewise, we could use if..else statement such as:  
 
   # Single-line  
   if [[ 2 -ne 1 ]]; then echo "true"; else echo "false"; fi  
     
   # Multi-line  
   if [[ 2 -ne 1 ]]; then  
     echo "true"  
   else  
     echo "false"  
   fi  
 
Sometimes if..else statements are not enough to do what we want to do. In  
this case we shouldnt forget about the existence of if..elif..else  
statements, which always come in handy.  
 
Look at the example below:  
 
   if [[ `uname` == "Adam" ]]; then  
     echo "Do not eat an apple!"  
   elif [[ `uname` == "Eva" ]]; then  
     echo "Do not take an apple!"  
   else  
     echo "Apples are delicious!"  
   fi  
 
## THE CHALLENGE  
 
Create a file named if.bash.  
 
Using if statement and primaries, output Good morning! if the first  
positional parameter is less than 12. Output Good afternoon! if it is  
equal to/greater than 12 but less than 18. Otherwise, output Good evening!  
if it is equal to/greater than 18. Take care about cases when the  
positional argument is less than 0 and greater than 24 (print Error! in  
this cases).  
 
For example:  
 
   ./if.bash -5  
   ./if.bash 12  
   ./if.bash 21  
 
Output:  
 
   Error!  
   Good afternoon!  
   Good evening!
   
#################################   

You have made simple script that greets us depending on current time. But  
how can we get current time?  
 
For those purposes we can use date command that prints or set the system  
date and time. So using this command we might solve this problem like  
this:  
 
   # Get current hour  
   HOUR=$(date +%H)  
     
   if [[ $HOUR -lt 12 ]]; then  
     echo "Good morning!"  
   elif [[ $HOUR -ge 12 && $HOUR -lt 18 ]]; then  
     echo "Good afternoon!"  
   else  
     echo "Good evening!"  
   fi  
 
The +%H means that we want to output only current hour in 00..23 format.  
Use man date to find out more about the date command.
'