###### Linux Bootcamp CS50:

Linux distributions (aka distros):

1. Debian-based:
    - Debian
    - Ubuntu

2. RPM-based:
    - CentOS
    - Fedora

3. Pacman-based:
    - Arch


`debian`, `rpm` and `pacman` refers to a format of software packages that is supported or use on the system.


**Command Line** is a way of interacting with a software by issuing textual commands.


**Linux Filesytem Hierarchy**:

The filesystem heirarchy in linux is shaped like a tree where everything lives inside of one folder called the **root** folder denoted by `(/)` and inside of this folder we will find some more folders like `etc`, `home`, `usr`, `opt` etc.


**Paths**:

A `Path` consists of names of directories, leading to a particular file or directory separated by a forward slash (/). There are two kinds of paths:

1. Absolute path
    - starts with root folder (aka /)
    - doesn't matter where we are

2. Relative path
    - Relative to where we are

Relative path changes according to the folder where you are currently in.


- A `terminal window` is a kind of program which runs another program called `shell`.
- A `shell` is just a program that waits for a command, processes these commands and runs them for us. This shell running inside of the terminal window is called a `bash`.


**Basic Commands**:

`~` represents the home folder for whatever user that is currently logged in.
`pwd` -> It prints the absolute path of the folder that we are currently in.

**file names** and **folder names** in Linux are case-sensitive.

`mv` -> this command is also used to rename the file. `my <old_file_name> <new_file_name>`

`cat` is short for concat or concatenate.

ctrl + D -> it means done and it will exit `cat`.


**How can we achieve input-output redirection using `cat`?**

`cat > foo` -> This means cat is not going to print on the terminal rather than in a file named `foo` in the current folder.

`cat filename` -> This is also used to view the contents of the file.

`cat >> filename` -> This command is used to append to the file.

`>` overrides the file whereas `>>` appends the file.

`cat < filename` -> takes the input from the file and outputs it and then exit it right away.

