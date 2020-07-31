#! /bin/bash

# CONTEXT: Today (7/31/20) is my dad's 66th birthday and my parents took my son to the zoo. Ty.

# ECHO COMMAND
echo Hello World!
#


## VARIABLES
## use as uppercase letters, numbers, underscore
AUTHOR="Kieran"
## Use `$` to ref variables in code
echo "VARIABLES: Hello, I am $AUTHOR"
## Can use template literal syntax like JS
## echo "My Name is ${AUTHOR}"


### USER INPUT
### use `read` to designate user input
### assign input to variable
read -p "USER INPUT: Enter your Name: " NAME
### reference variable
echo "Hello ${NAME}, thank you for loggin in."


#### SIMPLE `IF` STATEMENT
#### uses `if/then` and brackets
#### exit statement with `fi`
if [ "$NAME" == "Lexx" ]
then
    echo "IF STATEMENT: I love you, bud."
fi

#### IF-ELSE
#### same as `if` with added `else` params before `fi` closing
if [ "$NAME" == "Mark" ]
then
    echo "IF/ELSE: Happy Birthday, Dad!!!"
else
    echo "IF/ELSE: How Was the Zoo?"
fi

#### ELSE-IF (elif)
if [ "$NAME" == "Kathy" ]
then
    echo "ELIF: Did you guys have fun???"
elif [ "$NAME" == "Lexx" ]
then
    read -p "ELIF: What was your favorite animal?" ANIMAL
else
    echo "ELIF: Did you take lots of Pictures?"
fi
####


##### COMPARISON OPERATORS
# -eq equal
# -ne not equal
# -gt greater than
# -ge greater than or equal to
# -lt less than
# -le less than or equal to
#####

NUM1=3
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "COMPARISON OPERATORS: $NUM1 is greater than $NUM2"
else
    echo "COMPARISON OPERATORS: $NUM1 is less or equal to $NUM2"
fi
#####


###### FILE CONDITIONS
# file = file name; commands return boolean values

# -d file   is file DIRECTORY?
# -e file   does file EXIST?
# -f file   is string a FILE NAME?
# -g file   is there a GROUP id on the file?
# -r file   is file READABLE?
# -s file   is SIZE greater than 0?
# -u        is USER id set on file?
# -w        is file WRITEABLE?
# -x        is file EXECUTABLE
######

# check file example
FILE="notEmpty.sh"
if [ -f "$FILE" ]
then
    echo "FILE CONDITIONS: $FILE is a file"
else
    echo "FILE CONDITIONS: $FILE is not a file"
fi

FILE="test.txt"
if [ -f "$FILE" ]
then
    echo "FILE CONDITIONS: $FILE is a file"
else
    echo "FILE CONDITIONS: $FILE is not a file"
fi

# check folder exists example
FOLDER="test"
if [ -e "$FOLDER" ]
then
    echo "FILE CONDITIONS: $FOLDER is a folder"
else
    echo "FILE CONDITIONS: $FOLDER is not a folder"
fi

FOLDER="noFolder"
if [ -e "$FOLDER" ]
then
    echo "FILE CONDITIONS: $FOLDER is a folder"
else
    echo "FILE CONDITIONS: $FOLDER is not a folder"
fi
######


####### CASE STATEMENTS

read -p "CASE STATEMENTS: Are you 21 or Over? Y/N: " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "CASE STATEMENTS: You can have a drink."
        ;;
    [nN] | [nN][oO])
        echo "CASE STATEMENTS: No drinks for you."
        ;;
    *)
        echo "CASE STATEMENTS: Please enter yes or no."
        ;;
esac
#######


######## SIMPLE FOR-LOOP
NAMES="Kieran Lexx Mark Kathy"
for NAME in $NAMES
    do
        echo "SIMPLE FOR-LOOP: Hello $NAME, I Love You."
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.js)
NEW="new"
for FILE in $FILES
    do
        echo "FOR LOOP: Re-naming file to new-$FILE"
        ## mv $FILE $NEW-$FILE
done
########


######### WHILE LOOP
# read through a file line by line
LINE=1
while read -r CURRENT_LINE
    do
        echo "WHILE LOOP: $LINE: $CURRENT_LINE"
        ((LINE++))
done < "./ipsum.txt"
#########


########## FUNCTIONS
function sayHello() {
    echo "FUNCTIONS: Hello World!"
}
sayHello

########## FUNCTIONS WITH PARAMS
function greet() {
    echo "FUNCTIONS WITH PARAMS: Hello, I am $1 and I am $2"
}
greet "Kieran" "35"
##########


########### PASSING TERMINAL COMMANDS
# crate a folder, create a file, write to created file, move file to created folder
mkdir DELETE_ME
touch "DELETE_ME/fakefile.txt"
echo "I am some arbitrary data written from a shell script"
echo "Created DELETE_ME/fakefile.txt"