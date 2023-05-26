
#Basic Syntax
function name() {

    list of commands
}

#use function name   to call the function

__________________________________________________________

#!/bin/bash

#define a function

hello(){

echo "hai there!"

}

#Invoke the function
hello

__________________________________________________________

#Pass paramenter to a function

#!/bin/bash

#define a function

hello(){

echo "Hello $1 $2"  # 1 is first argument and 2 is second argument

}

#Invoke the function with parameters
hello hi there     
__________________________________________________________

#Retuen a value from a function

#!/bin/bash

#define a function
hello(){

echo "Hello $1 $2"  # 1 is first argument and 2 is second argument
return 10  #just returning a value
}

#Invoke the function with parameters
hello hi there     

#capture the return value
ret=$?
echo "Return value is $ret"

__________________________________________________________

Note : To call one function from another just use the function name in the function same like python.
