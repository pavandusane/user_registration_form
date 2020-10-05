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
if [[ "$email" =~ ^[a-zA-Z0-9]+([-._+][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,3})*$ ]]
then
    echo "Your Email Address is $email"
else
   echo "Please Enter Valid Email Address"
fi

echo "Enter your mobile no : "
read mob
if [[ "$mob" =~ ^[7-9][0-9]{9}$ ]]
then
   echo "Your mobile Number is $mob"
else
   echo "Please Enter Valid Mobile Number"
fi


echo "Enter your password : "
read password
count=`echo ${#password}`
if [[ $count -ge 8 ]]
then
if [[ $(echo "$password" | awk '/[a-z]/ && /[A-Z]/ && /[0-9]/ && /[[:punct:]]/') ]]
then
    echo "String meets your requirements"
else
    echo "String does not meet your requirements"
fi
else
    echo "Enter minimum 8 length"
fi



