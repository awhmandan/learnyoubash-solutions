#!/usr/bin/env bash 

final=(I am "${*:2:2}" and "${*:4:1}")

echo "${final[*]}"

: '
When dealing with arrays, we should be aware of the special environment  
variable IFS. IFS or Input Field Separator — is the character that  
separates elements in an array. The default value is an empty space IFS="".  
 
### Array declaration  
 
In bash you create an array by simply assigning a value to an index in the  
array variable:  
 
   fruits[0]=Apple  
   fruits[1]=Pear  
   fruits[2]=Plum  
   echo ${fruits[*]} # echo ${fruits[@]} may be used as well  
 
Array variables can also be created using compound assignments such as:  
 
   fruits=(Apple Pear Plum)  
 
### Array slice  
 
Besides, we can extract a slice of array using the slice operators:  
 
   echo ${fruits[*]:0:2} # Apple Pear  
   echo ${@:1:2} # slice of positional parameters  
 
In the example above, fruits[*] returns the entire contents of the array,  
and :0:2 extracts the slice of length 2, that starts at index 0.  
 
### Adding elements into an array  
 
Adding elements into an array is quite simple too. Compound assignments  
are specially useful in this case. We can use them like this:  
 
   fruits=(Orange ${fruits[*]} Banana Cherry)  
   echo ${fruits[*]} # Orange Apple Pear Plum Banana Cherry  
 
The example above, fruits[*] the entire contents of the array and  
substitutes it into the compound assignment, then assigns the new value  
into the fruits array mutating its original value.  
 
### Deleting elements from an array  
 
To delete an element from an array, use the unset command:  
 
   unset fruits[0]  
   echo ${fruits[*]} # Apple Pear Plum Banana Cherry  
 
## THE CHALLENGE  
 
Create a file named arrays.bash.  
 
Through positional parameters into your script will be passed few values.  
As you already know, all parameters which were passed into script are  
stored in $* and $@ variables. These variables are nothing else than  
arrays.  
 
You should take slice of elements from the second to third (eventually two  
items). Save this elements to new array. Add to the beginning of array two  
new items I and am. Add to the ending of the array two items: and and  
fourth positional argument.  
 
Output all elements of array.  
 
For example, if you run your script with these arguments:  
 
   ./arrays.bash awesome cool strong cute awesome  
 
The script must output this:  
 
   I am cool strong and cute
'