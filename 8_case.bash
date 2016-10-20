#!/usr/bin/env bash

EXT=$1

case "$EXT" in
  (jpeg)
    echo "It is jpeg."
    ;;
  (png)
    echo "It is png."
    ;;
  (gif)
    echo "It is gif."
    ;;
  (*)
    echo "$EXT is not an image!"
    ;;
esac

: '
CASE CONDITIONAL STATEMENT (Exercise 8 of 11)  
   
If you are confronted with a couple of different possible actions to take,  
then using a case statement may be more useful than nested if statements.  
For more complex conditions use case like below:  
 
   case "$FRUIT" in  
     (apple)  
       echo "Mmmmh... I like apple!"  
       ;;  
     (banana)  
       echo "Hm, a bit awry, no?"  
       ;;  
     (orange|tangerine)  
       echo "I dont like it!" && exit 1  
     ;;  
     (*)  
       echo "Unknown fruit - sure it isnt toxic?"  
     ;;  
   esac  
 
Each case is an expression matching a pattern. The | sign is used for  
separating multiple patterns, and the ) operator terminates a pattern  
list. The commands for the first match are executed. * is the pattern for  
anything else that doesnt match the defined patterns. Each block of  
commands should be divided with ;; operator.  
 
## THE CHALLENGE  
 
Create a file named case.bash.  
 
In this exercise you will create small image extensions checker. Using  
case statement, check if the first positional parameter is an jpeg (or  
jpg), png, gif extension. Output It is jpeg., It is png., It is gif.  
accordingly. Take care about cases when positional argument contains any  
other extension (print [EXT] is not an image! in this cases).  
 
For example:  
 
   ./case.bash png  
   ./case.bash js  
   ./case.bash jpg  
 
Output:  
 
   It is png.  
   js is not an image!  
   It is jpeg.
   
##########################

The basename command strips directory and suffix from filenames such as:  
   
   basename path/to/file.ext  #> file  
 
The dirname command strips last component from file name, like this:  
 
   dirname /path/to/file.ext  #> path/to  
 
Run man basename and man dirname to learn more about these cool commands.
'