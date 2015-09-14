#!/usr/bin/env bash
# denote where should we find the the program to run the script

# $(<code>) and `<code>` will subsistute the output of <code> to the command
# $() and `` are identical

SCRIPT=$(readlink -f $0) # SCRIPT will be the absolute path of the script. e.g. /home/user/bin/foo.sh

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

# tar
#
# tar is used to create/extract/view an archive in unix
# common flags are
# cvf: to create
# xvf: to extract
# tvf: to view
# c/x/v: create/extract/view
# v: verbose (optional)
# f: following is the archive file
# we can also append some flags like `z` or `j` which will filter the tar ball into some compressor.

tar cvfz <archive_name>.tar.gz <dir_name>/
tar cvfj <archive_name>.tar.bz2 <dir_name>/ # change the suffix if you change the compressing option.
tar xvf <archive_file>.tar /path/to/file # extract a single file from the archive
tar xvf <archive_file>.tar /path/to/dir/ # extract a single directory from the archive

# adding a file or directory into an archive
tar rvf <archive_name>.tar <new_file>
tar rvf <archive_name>.tar <new_dir>/
# However, you cannot add file/dir into a compressed archive.

# grep
#
# grep is used to search text in unix

grep "<string_literal>" <file_name>
grep "<REGEX>" <file_name> # match regex in the file

grep "<string_literal>" <file_pattern>
# -i: case insensitive
# -w: match full word rather than substring
# -B/-A/-C <number_of_lines>: displaying lines before/after/around

# highlighting the search using GREP_OPTIONS
# -r: search in all the files under the current directory and its sub directory.
# -v -e <exclude_pattern>: invert the match display the lines does not match.
# you may have multiple `-e <exclude_pattern>`
# -c: count the number of match
# -n: showing the line number of the match
# zgrep: like zcat, will grep from a gzipped file

# export
#
# list all environmental variables

# ps
#
# display information of the processes

less huge_log_file.log
# CTRL+F: forward a window
# CTRL+B: backward a window

# TODO: http://www.thegeekstuff.com/2009/06/15-practical-crontab-examples/
# TODO: http://www.thegeekstuff.com/2009/12/4-ways-to-kill-a-process-kill-killall-pkill-xkill/
# TODO: http://www.thegeekstuff.com/2011/01/regular-expressions-in-grep-command/
# TODO: http://www.thegeekstuff.com/2008/08/15-examples-to-master-linux-command-line-history/

# link function
# source are the existing files/dir and the target is the where the pointer locates.
ln -s <source_file/dir> <target_file/dir>




