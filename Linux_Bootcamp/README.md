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

`cat < filename1 > filename2` -> It reads the content from first file and instead of the terminal it writes the output to the second file.

`rm filename` -> It will delete the file but will first prompt to verify whether you want to delete it or not.

`rm -f filename` -> It will delete the file without asking for prompt.

**-f** is a command-line option. Most of the commands have some sort of command-line options that influence the behavior or change the behaviorof your command.

`-h` or `--help` gives us a basic description of the command and shows the different bunch of options that are supported.


> Many commands in Linux has **manual pages** or **man pages** in short, that has more detailed description of what the command can do, maybe 
some examples and it also lists some of the options that the command supports and what they do.

- The man command supports searching by keyword as sometimes we are not sure what command to use next.

`man -s 1 -k remove` -> This command will help us if we are not sure which `remove` command we have to use.

-s 1 -> section1 which contains a list of general commands.
-k -> it is for keyword.

`rmdir` -> It removes empty directories.

**Can rmdir remove a non-empty directory?**
- No, rmdir cannot remove a non-empty directory. `rm -r` can remove the non-empty directory.


**Piping**:

Piping or Pipelines or Pipes is another form of redirection in Linux. Piping allows to have a command that takes input from another command's
output.

- `wc` is a tool for word count. It works in a similar fashion as `cat`. It shows three things in the output i.e.
(i) first is the number of lines entered.
(ii) second is the number of words entered.
(iii) third is the number of bytes (size of the file).

If I only want to count the number of lines: `wc -l`

`cat filename | wc -l` -> the output of the filename will not be prompted on the terminal rather it will be consumed by the wc and then it
 prints the number of lines in a file.

- You can chain more than two commands using piping.
- Piping allows to essentially directly have a command output be consumed as another command input.

`wget <url>` -> This command is used to download a file from a certain URL.

`CTRL + L` -> This command will also clear your terminal other than command `clear`.

`less` -> It lets us view the contents of the file but it also allow some other things.

- pressing the `enter` key or `j` will take you down one line.
- `k` takes you one line up.
- `space` key will take us to next page in less.
- `b` takes us to the previous page.
- `g` goes all way back to the top of the file.
- `shift + g` takes us way down to the bottom of the file.
- If I want to search a specific word from the file: `/<term_to_be_searched>`
- `n` -> If you want to jump to the next line.
- `shift + m` -> It will take us to the previous match.
- `-i` ignores the case sensivity and searches the term.
- `q` -> to exit from less.

> **man** also uses **less** by default to show you the detailed description and the option of a certain command so you can navigate in `less` using the same keyboard shortcuts or even more keyboard shortcuts and more things that you can do with `less`.

`head filename` -> This command allows us to see some lines from the top of the file. By default it will show first 10 lines.
`head -n 20 filename` -> This command allows us to see first 20 lines of the file.
`tail filename` -> This command shows us the last 10 lines of the file.

There is a utility in Linux called `cut` which lets us print or view certain columns from a file.

`cut -d , -f 2 filename` -> This command will give us a list of column which is marked as `2` in the command. `,` is the delimiter. It can be
 anything.

`cut -d , -f 2,3 filename` -> This command will print a list of multiple columns.

`sort filename` -> by default sort tends to sort by the value of the representation of string. It doesn't take into account the numeric value
of the string. It takes more kind of ASCII value type of string. 

If you want to sort by the numeric value of the string then run: `sort -n filename`. 

> Like other commands sort by default writes its output to the standard out so it doesn't write to a file. We can write it to a file by doing

`sort -n <original_file> > <new_sorted_output_file>`

> If we want to search something in the file without necessarily opening the file or without opening it in something like `less` there is a very handy command for that called `grep`.

**grep** can be used to find something in a text file. By default grep tends to be case-sensitive. If you want to ignore the case-sensivity runthe following command: `grep -i <keyword> <filename>`, where `-i` stands for **ignore case**.

If the keyword you are searching for has whitespaces or some special symbols, run the command like: `grep -i '<keyword>' <filename>`. You can
also use double quotes ("") around the keyword as well.

- grep is a very handy command to be used with the Regular Expressions.

- **sed** is a command that allows us to search for and replace text in a file. command: `sed 's/<misspelled_word>/<correct_word>/' <filename> | less`. It will allow to be able to scroll and use `less` tricks.

If you do `less filename` again the original file has not been modified. Couple of ways to fixed this:

(i) we can use `>` to output the result to a new file.
(ii) or we can use command: `sed -i 's/spelled_word>/<correct_word>/ <filename>` where **-i** stands for in-place and the original file will beupdated with the modified right changes.

- `find /usr -name 'cs50*'` -> This command will find all files starting with the keyword 'cs50' in the `/usr` folder.



