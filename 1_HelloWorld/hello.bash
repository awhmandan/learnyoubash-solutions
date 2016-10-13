#!/usr/bin/env bash

echo "Hello, world!"


: '
Create your first script using touch command:  
   
   touch hi.bash  
 
The touch command creates an empty file in your current directory.  
 
Now you can simplify invoking the script by making it an executable file  
using the chmod command:  
 
   chmod +x hi.bash  
 
Additionally, the first line in the script must indicate which program it  
should use to run the file, like so:  
 
   #!/usr/bin/env bash  
     
   echo "Hi!"  
 
This #!/usr/bin/env bash character sequence is known as the  
[shebang](http://en.wikipedia.org/wiki/Shebang_%28Unix%29). Now you can  
run script like this:  
 
   ./hi.bash  
 
Another handy thing we learned above is using the echo to print something  
to the terminal screen. 

By the way, pay your attention to whoami command. This command prints your  
username. That means you can do something like this:  
 
   #!/usr/bin/env bash  
     
   echo "Hello, $(whoami)!"  
 
This script will greet you personally.  
 
Besides, if you have problems with any command, you always can read manual  
about the command using man command. This command work well with any Unix  
command and will be your handy guide in Bash world. For example:  
 
   man pwd  
 
Additionally, almost every command has a --help flag, that show simple  
how-to message for you. Use this flag like this:  
 
   pwd --help
'