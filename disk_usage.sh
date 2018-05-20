#!/bin/bash

space_free=$( df -h | awk '{ print $5 }' | sort -n | tail -n 1 | sed 's/%//' )

case $space_free in
    [1-5]*)
        echo Loads of disk space available
        ;;
    [6-7]*)
        echo Could be running out soon
        ;;
    8*)
        echo Maybe we should look at clearing out old files
        ;;
    9*)
        echo Euston, we have a problem...
        ;;
    *)
        echo Ok, something is screwed
        ;;
esac
