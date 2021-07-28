#! /usr/bin/bash

# here-doc in bash:

cat << heredoc
This is one line
This is two line  
: '
multi-line comment'

heredoc
