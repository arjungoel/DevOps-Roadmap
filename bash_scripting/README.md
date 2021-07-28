**AGENDA**:

1. Hello Bash Scripting
2. Redirects to file
3. Comments
4. Conditional Statements
5. Loops
6. Script input
7. Script output
8. Pipes


`cat /etc/shell` -> It will provide you the list of available shells.
`which bash` -> It will give you the path of the bash.
`chmod +x <filename>` -> This command is used to make the script executable.

**Redirect to files**:

If you don't want to override the text rather you want to append text to it use `>>`.


**Comments**:

# This is a single-line comment

: 'This is a
 multi-line comment'


`here doc` is basically a phenomena that helps you interact with the shell.


**Conditional Statements**:

-eq -> equal to
-ne -> not equal to
-gt -> greater than
-lt -> less than 

You can also use brackets i.e. <, >


**Loops**:

`while` Loop executes the block of code (enclosed in do...done) when the condition is true and keeps executing that till the condition becomes false. Once the condition becomes false, the while loop is terminated.

`until` Loop executes the block of code (enclosed in do...done) when the condition is false and keep executing that till the condition becomes true. Once the condition becomes true, the until loop is terminated. 


- The `break` statement has two forms: labeled and unlabeled. You saw the unlabeled form in the previous discussion of the switch statement. You can also use an unlabeled break to terminate a for, while, or do-while loop [...]
- An unlabeled break statement terminates the innermost switch, for, while, or do-while statement, but a labeled break terminates an outer statement.

- The `continue` statement skips the current iteration of a for, while , or do-while loop. The unlabeled form skips to the end of the innermost loop's body and evaluates the boolean expression that controls the loop. [...]
- A labeled continue statement skips the current iteration of an outer loop marked with the given label.



"$@" represents unlimited number of inputs.


Script Output: STDOUT and STDERR



**Send output from one script to another**:

With `pipes` you send one command output to another command.


**DECLARE COMMAND**:

Bash doesn't have a strong type system so you cannot restrict the variables in bash. However to allows type like behavior it can use attributes that can set by a command and that command is called as `Declare`.

- Declare is a bash built-in command that allows you to update attributes applied to variables within the scope of your shell.
- In addition it can be used to declare a variable in long-hand and it allows you to peek in the variables as well.


declare -p -> To see the variables for the system.

We can also create read-only variables. `-r` is for read-only.


**ARRAYS**:


**Files and Directories**:

 
