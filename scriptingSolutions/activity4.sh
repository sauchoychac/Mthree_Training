#!/bin/bash

echo "Enter Password: "
read input
len=`expr length "$input"`

# Length Should be 8 or More
if (( $len < 8 ))
then echo "Must be 8 or more characters"; exit 1
fi

# Should contain numbers and letters
if ! [[ $input =~ ^[0-9a-zA-Z]+$ ]]
then echo "Must contain only numbers and letters"; exit 1
fi

if ! [[ $input =~ [0-9] ]]; then
  echo "Must contain numbers"; exit 1
fi


#Should have both upper and lowercase
if ! [[ "$input" =~ [[:upper:]] ]]; then
  echo "Must contain uppercase characters"; exit 1
fi

if ! [[ "$input" =~ [[:lower:]] ]]; then
  echo "Must contain lowercase characters"; exit 1
fi


echo "Password is Secure"
