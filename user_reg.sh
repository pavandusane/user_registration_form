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

echo "Enter your email id : "
read email
if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "Your Email Address is $email"
else
   echo "Please Enter Valid Email Address"
fi
