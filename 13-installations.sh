#!/bin/bash

USERID=$(id  -u)

if [ $USERID -ne 0 ]; then
   echo "Error:: please run this script with root priviledge"
   exit 1 # failure is other than 
   fi

   dnf install mysql -y

   if [ $? -ne 0 ]; then
      echo "Error:: Installing MySQl is failure"
      exit 1 # failure is other than 
    else 
      echo "installing mysql is success"
      exit 1 # failure is other than 
    fi
