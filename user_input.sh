#!/bin/bash

echo Hello, who am I talking to?

read name

echo It\'s nice to meet you $name

echo Please provide a Username and Password:

#-p: prompt, -s: silent
read -p 'Username: ' uservar
read -sp 'Password: ' passvar

echo Thank you $uservar, we now have you login details
