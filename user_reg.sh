#!/bin/bash -x

echo "***********User Registration Form***************"

echo "Enter your first name : "
read fname
pat="^[a-zA-Z*]{3,}$"
if [[ $fname =~ $pat ]]
then
  echo "Hello Mr.$fname"
else
  echo "Name should be begin with alphabets or having minimum length is 3"
fi

echo "Enter your last name : "
read lname
pat="^[a-zA-Z*]{3,}$"
if [[ $lname =~ $pat ]]
then
  echo "Hello Mr.$fname $lname"
else
  echo "Last name should be begin with alphabets or having minimum length is 3"
fi
