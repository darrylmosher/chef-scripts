#!/bin/bash
variables=$(cat $1 | grep -o "<%= @.*" | tr -d " %>" | tr -d "@" | tr -d "<=" | grep -v "rails_env")
echo -e ' \t ' "variables(" > $1_vars
for variable in $variables
    do
    echo -e ' \t'' \t '":"$variable" => ""''""," >> $1_vars
done
echo -e ' \t ' ")" >> $1_vars