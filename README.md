## **Introduction to Bash Scripts**

The intention of this repository is to set a playground to bash scripting. The goal is to cover all the basic concepts to become a independent bash script developer.

Many of the concepts and exercises will be collected from the following link: https://tldp.org/LDP/Bash-Beginners-Guide/html/

**Author:** `João Nisa`

**Last Update:** `29/03/2021` 

### **Exercises**

#### &nbsp;&nbsp;&nbsp;&nbsp; **1. Hello World**

The first exercise is an exercise that is common to all the programming languages. 

The goal is to get the message `Hello World!` whenever the bash script is executed.

Basically, is must perform according to the next example:
`````
BashScriptExercises % ./hello_world.sh
Hello World!
`````

**Note:** The solution can be found on the `HelloWorld` folder.

#### &nbsp;&nbsp;&nbsp;&nbsp; **2. Remove old files**

The goal of the second exercise is to built a bash script that receives two input variables:
-  `retention_period`: an integer correspondent to the number of days that the folders should be kept;
- `directory`: a target local directory that should be analyse with the intention of spot out-dated folders.

Basically, is must perform according to the next example (at 26th March):
````
BashScriptExercises % ll
drwxr-xr-x  2 jnisa  staff  64 Mar 25 12:00 old
drwxr-xr-x  2 jnisa  staff  64 Mar 24 12:00 oldest
drwxr-xr-x  2 jnisa  staff  64 Mar 26 12:00 today
BashScriptExercises % ./remove_old_files.sh 2 /files
BashScriptExercises % ll
drwxr-xr-x  2 jnisa  staff  64 Mar 25 12:00 old
drwxr-xr-x  2 jnisa  staff  64 Mar 26 12:00 today
````

**Note:** The solution can be found in the `RemoveOldFiles` folder.

#### &nbsp;&nbsp;&nbsp;&nbsp; **3. Is Integer**

The objective of this exercise is to create a bash script that receives any type of variable as an input and then validates whether the variables received is or isn't a `integer`.

Basically, it must perform according to the next example:
````
BashScriptExercises % ./is_integer 1
Received variable: 1
The variable received is an integer!

BashScriptExercises % ./is_integer a
Received variable: a
Error: The input variable must be a integer!"
`````
**Note:** The solution can be found in the `IsInteger` file.

#### &nbsp;&nbsp;&nbsp;&nbsp; **4. Is Even**

The intention of this exercise is to create a bash script that validates whether the input variables is or isn't a odd number.

The script must act according to the next example:
`````
BashScriptExercises % ./is_even.sh 2
True

BashScriptExercises % ./is_even.sh 1
False
`````

**Note:** The solution can be found in the `IsEven` folder.

#### &nbsp;&nbsp;&nbsp;&nbsp; **5. Pick the Even Numbers**

Here the goal is to select the even numbers among multiple numbers that will be in an array (which will be the input variable to this bash script).

The solution must comprise the following steps:
1. Guarantee that each index of the input array comprises a integer variable;
2. Validate that each element of the array is a even number;
3. The script must return the array with even numbers only.

Example of what was stated above:
`````
BashScriptExercises % inputArray=(1 2 3 4 5 6)
BashScriptExercises % ./pick_even.sh "${inputArray[@]}"
2 4 6
`````

**Note:** The solution can be found in the `PickEven` folder.

#### &nbsp;&nbsp;&nbsp;&nbsp; **6. Basic Calculator**

The goal of this exercise is to built a calculator that receives 2 input values and returns the result of the four basic aritmetic operations (addition, subtraction, multiplication and division).

The interaction with this bash script must be something like:
````
BashScriptExercises % ./basic_calculator 1 2
The result of the addition is: 3
The result of the subtraction is: -1
The result of the multiplication is: 2
The result of the division is: 0.5
````

### **Notes**

#### &nbsp;&nbsp;&nbsp;&nbsp; **a. Comparisons**

To compare two variables directly in the terminal you can do the following:
`````
BashScriptExercises % echo $(( 1 == 2 ))
0

BashScriptExercises % echo $(( a == a ))
1
`````
Where `0` corresponds to the boolean value `False` and `1` corresponds to `True`.

___
