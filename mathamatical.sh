#!/bin/bash

# Author: DJ
# This script is regards to providing the output of any two random numbers entered by the user.

clear
echo "--------------------------------"
echo "-------welcome to calculator----"
echo "--------------------------------"
echo -e "[a]Addition\n[b]Subtraction\n[c]Multiplication\n[d]Division\n"
read -p "Enter your choice: " choice
case $choice in
   [aA])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1+num2))
        echo "The result for your choice is: $result"
        ;;
   [bB])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1-num2))
        echo "The result for your choice is: $result"
        ;;
   [cC])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1*num2))
        echo "The result for your choice is: $result"
        ;;
   [dD])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1/num2))
        echo "The result for your choice is: $result"
        ;;
   *)
       echo "Wrong choice"
       ;;
esac
