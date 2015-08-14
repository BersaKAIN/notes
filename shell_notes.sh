#!/usr/bin/env bash
# denote where should we find the the program to run the script

# SCRIPT will be the absolute path of the script. e.g. /home/user/bin/foo.sh
# $(<code>) and `<code>` will subsistute the output of <code> to the command
# $() and `` are identical

SCRIPT=$(readlink -f $0)

# SCRIPTPATH will be the directory of the script

SCRIPTPATH=$(dirname "$SCRIPT")

# ${<variable_name>} will subsistute the variable of <variable_name>
${PATH}

# getopts:
# when there are no more arguments to parse, getopts will set exit state to FALSE so we can put getopts into a while loop.
 
while getopts ...; do
    ...
done

# specify what we are looking for in the opts

getopts OPTSTRING VARNAME [ARGS...]

# [[]] and [] are used to test for boolean values
# [[]] are the new and more powerful test and is compatible with bash and zsh while [] is the old test and compatible in all POSIX shells.
# the new test include test for strings integers and etc
[[ stringA < stringB]] # < can also be >, =(or ==), !=
[[ integerA -gt integerB ]] # -gt can also be: -lt, -ge, -le, -eq, -ne
[[ bool1 && bool2 ]] # && can also be: ||
# (...) can be used to group expressions.
[[ $name = a* ]] # pattern matching
[[ $name =~ ^Fri\ .\ 13 ]] # regular expression matching
