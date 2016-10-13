#!/usr/bin/env bash

echo "1: $1"
echo "3: $3"
echo "5: $5"

: '
Your program should output only the first, third and fifth positional  
parameters, which will be passed into your script. Before each argument  
must be  its sequence number with colon :. Every parameter must be  
outputted on separate lines.  
 
For example, if you run script like so:  
 
   ./parameters.bash one two three four five six seven  
 
The output must look like this below:  
 
   1: one  
   3: three  
   5: five

########################

Positional parameters are variables allocated when a function is evaluated  
and are given positionally. The following table lists positional parameter  
variables and other special variables and their meanings when you are  
inside a function.  
 
Parameter    Description  
------------ -------------------------------------------------------  
$0           Scripts name.  
$1 … $9      The parameter list elements from 1 to 9.  
${10} … ${N} The parameter list elements from 10 to N.  
$* or $@     All positional parameters except $0.  
$#           The number of parameters, not counting $0.  
$FUNCNAME    The function name (has a value only inside a function).  
 
In the example below, the positional parameters will be $0="./script.sh",  
$1="foo" and $2="bar":  
 
   ./script.sh foo bar  
 
### Default values  
 
Variables may also have default values. We can define as such using the  
following syntax:  
 
   # Assign FOO value "default" if its empty  
   FOO=${FOO:-"default"} ##should actually be single quotes around default  
 
Default values may be useful when you should process the positional  
parameters, which could be omit.

########################

Positional parameters will be very useful for building your own command  
line applications.  
 
For example, we have the script:  
 
   #!/usr/bin/env bash  
     
   echo "Arguments:"  
   echo $*  
 
Run it with some flags:  
 
   ./script.bash --test -t -a -b -c  
 
It will print:  
 
   --test -t -a -b -c  
 
That means we can handle these flags and change the way what script will  
return. Exactly the same as with --help flag, that outputs a help message  
instead of running the program.
'