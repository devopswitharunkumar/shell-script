#!/bin/bash

PERSON1=Ramesh
PERSON2=Suresh

echo "$PERSON1 : Hello $PERSON2, Good Morning"
echo "$PERSON2 : Hi $PERSON1, Good Morning"
echo "$PERSON1 : How are you $PERSON2 ?"
echo "$PERSON2 : I am fine $PERSON1, How are you ?"
echo "$PERSON1 : I am also fine $PERSON2, Thanks for asking"
echo "$PERSON2 : thanks $PERSON1, Will meet again Bye Bye"

# Concept of Variable Assignment:
# -------------------------------
# if single word value like below  we can use no quotes, or double quotes or single quotes.
# PERSON1=Ramesh  
# PERSON2=Suresh
# or
# PERSON1="Ramesh  "
# PERSON2="Suresh"
# or
# PERSON1='Ramesh  '
# PERSON2='Suresh'

# But if value contains space then we must use double quotes 
# ex : correct way to assign value with space is using double quotes or single quotes.
# PERSON1="Ramesh kumar"
# PERSON2="Suresh kumar"
# or
# PERSON1='Ramesh kumar'
# PERSON2='Suresh kumar'
# wrong way to assign value with space is using no quotes
# PERSON1=Ramesh Kumar 
# PERSON2=Suresh kumar   --> here kumar treated as command because bo quotes



# Example With Variable Expansion
# Double Quotes
# NAME="Arun"
# echo "Hello $NAME"   --> Output: Hello Arun

# Single Quotes
# echo 'Hello $NAME'
# Output: Hello $NAME ---> Because:❌ variable expansion disabled.

# Special Characters Example
# Double Quotes
# echo "Today is $(date)"   ---> Output: Today is Wed May...
# Single Quotes 
# echo 'Today is $(date)'   ---> Output: Today is $(date)

#space related example:
# FOR DOUBLE QUOTES AND SINGLE QUOTES
# CORRECT WAY 
# PERSON1="Ramesh KUMAR"  
# PERSON2="Suresh KUMAR"
# WRONG WAY  --> NO SPACE BEFORE AND AFTER '='
# PERSON1 = "Ramesh KUMAR"  
# PERSON2 = "Suresh KUMAR"
# NO QUOTES CORERECT WAY
# PERSON1=Ramesh
# PERSON2=Suresh
# NO QUOTES WRONG WAY
# PERSON1 = Ramesh
# PERSON2 = Suresh