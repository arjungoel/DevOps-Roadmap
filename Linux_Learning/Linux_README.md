**Command Line Basics**:

Displaying a calendar of the current month: `cal`
Displaying the current date and time: `date` 

`less` is capable of displaying text in other languages.
- less can open more than one file at a time.
- `:n` is used to navigate to the next file.
- `:p` is used to navigate to the previous file. 


To list the contents of a non-current directory using a relative path: `ls <path_of_relative_directory>`
To list the contents of a non-current directory using an absolute path: `ls <path_of_absolute_directory>`


**Identifying and understanding symbolic links**:

`ls -l <path>` where `-l` is used to display long listing path.
`/usr/bin/python -> python2` -> This means it is not a normal file instead it is a symbolic link that points to another file.

`file` can be used to determine the type of a file.

`symbolic links` are same as shortcut in Windows and Aliases in the MacOS provide a mechanism for referring to another file.

NOTE: By default `ls` ignores any file whose name begins with dot(.)

`ls -a` is used to display the hidden files.


**Using ls with additional options**:

The file sizes reported by `ls -l` aren't particularly readable.

By default `rm` doesn't prompt you for confirmation. It simply deletes the file. If you use `-i` file rm prompts you for confirmation before it begins deleting files.
- By default `rm` doesn't remove directories.

Relative path has two special components:

. -> It refers to the current working directory.
.. -> It refers to the parent of the current working directory.


