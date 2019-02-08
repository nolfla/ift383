#!/bin/bash

read -p  "Please Enter a Name: " NAME

if cat teledir.txt | grep -q "^$NAME";

then

echo "Entry exists"; echo "$NAME" | cut -d "" -f2 teledir.txt | grep ${NAME}

else

echo -n "${NAME}" >> teledir.txt; echo "User was Added"

fi

