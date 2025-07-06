#!/bin/bash
# This script is used to check user's oi program and the correct program.
if [ $# -eq 3]; then
    $1 > /tmp/input.txt
    $2 < /tmp/input.txt > /tmp/user_output.txt
    $3 < /tmp/input.txt > /tmp/correct_output.txt
    diff user_output.txt correct_output.txt
    if [ $? -eq 0 ]; then
        echo "Output matches!"
    else
        echo "Output does not match."
    fi
else if [ $# -eq 2 ]; then
    $2 < /tmp/data.txt > /tmp/user_output.txt
    $3 < /tmp/data.txt > /tmp/correct_output.txt
    diff user_output.txt correct_output.txt
    if [ $? -eq 0 ]; then
        echo "Output matches!"
    else
        echo "Output does not match."
    fi
else
    echo "Usage: $0 <input_generator> <user_program> <correct_program>"
    exit 1
fi
