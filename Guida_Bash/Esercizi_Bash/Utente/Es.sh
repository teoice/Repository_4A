#!/bin/bash

USER_NAME=$(id -nu)
USER_ID=$(id -u)

echo "Your user name ${USER_NAME}"
echo "your id name ${USER_ID}"

if [[ "${USER_ID}" -eq 0 ]]
then
echo 'you ara Root'
else
echo 'you are not Root'
fi

if [[ "${USER_ID}" -ne "${UID_TO_TEST}" ]]
then
echo "Your UID does not match ${NAME_TO_TEST}"
else
echo "your username does match ${NAME_TO_TEST}"
fi

