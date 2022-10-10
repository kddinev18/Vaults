---
tags: [classnote, linux, template]
creation date: 2022-10-08 18:24
modification date: 2022-08-09 18:24
---

Links: [[Linux - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Linux
2022-10-08

Command line skills
# Notes
## 1. Shell
- Once a user has entered a command the terminal then accepts what the user has typed and passes it to a shell.
- The shell is the command line interpreter that translates commands entered by a user into actions to be performed by the operating system.
- If output is produced by the command, then text is displayed in the terminal.
- If problems with the command are encountered, an error message is displayed.

The Bash shell also has other popular features, a few of which are listed below:

-   Scripting: The ability to place commands in a file and then interpret the file, resulting in all of the commands being executed. This feature also has some programming features, such as conditional statements and the ability to create functions (AKA subroutines).
-   Aliases: The ability to create short nicknames for longer commands.
-   Variables: Used to store information for the Bash shell and for the user. These variables can be used to modify how commands and features work as well as provide vital system information.

Bash has an extensive feature list; this is only a sampling of its capabilities.

When a terminal application is run, and a shell appears, displaying an important part of the interface—the prompt. Not only is the prompt there to indicate that commands can be run, but it also conveys useful information to the user. The prompt is fully configurable and can be as sparse or as full-featured as is practical and useful.
<hr>
The structure of the prompt may vary between distributions, but typically contains information about the user and the system. Below is a common prompt structure:
```shell
sysadmin@localhost:~$
```

The prompt shown contains the following information:

1.  **User Name:** sysadmin
    
2.  **System Name:** localhost
    
3.  **Current Directory:** ~

The `~` symbol is used as shorthand for the user's home directory. Typically the home directory for the user is under the `/home` directory and named after the user account name.

## 2. Commands
What is a command? The simplest answer is that a command is a software program that, when executed on the CLI, performs an action on the computer.

To execute a command, the first step is to type the name of the command. Click in the terminal on the right. Type `ls` and hit Enter. 
```shell
ls
```
Result: `Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos`

The `ls` command lists files and directories contained in the current working directory.
Many commands can be used by themselves with no further input. Some commands require additional input to run correctly. This additional input comes in two forms: options and arguments.

The typical format for a command is as follows:
```shell
command [options] [arguments]
```

Options are used to modify the core behavior of a command while arguments are used to provide additional information

## 3. Variables
A variable is a feature that allows the user or the shell to store data. 

Variables are given names and stored temporarily in memory. There are two types of variables used in the Bash shell: local and environment.
#### **1. Local Variables**
Local or shell variables exist only in the current shell, and cannot affect other commands or applications.
When the user closes a terminal window or shell, all of the variables are lost.

The following example creates a local variable named `variable1` and assigns it a value of `Something`:
```shell
variable1='Something'
```
The `echo` command is used to display output in the terminal. To display the value of the variable, use a dollar sign `$` character followed by the variable name as an argument to the `echo` command:
```shell
echo $variable1
```                      
Result: `Something`

#### **2. Environment Variables**
Environment variables, also called global variables, are available system-wide, in all shells used by Bash when interpreting commands and performing tasks. The system automatically recreates environment variables when a new shell is opened.

Examples include the `PATH`, `HOME`, and `HISTSIZE` variables. The `HISTSIZE` variable defines how many previous commands to store in the history list. The command in the example below displays the value of the `HISTSIZE` variable:

```shell
echo $HISTSIZE
```
Result: `1000`

To modify the value of an existing variable, use the assignment expression:

```shell
HISTSIZE=500                                            
echo $HISTSIZE           
```                   
Result: `500`
```ad-note
title: Note
Many variables are available for the Bash shell, as well as variables that affect different Linux commands. A discussion of all variables is beyond the scope of this chapter; however, more shell variables will be covered as this course progresses.
```

When run without arguments, the `env` command outputs a list of the environment variables. Because the output of the `env` command can be quite long, the following examples use a text search to filter that output.

In a previous example `variable1` was created as a local variable, so the following search in the environment variables results in no output:

```shell
env | grep variable1
```

The pipe `|` character passes the output of the `env` command to the `grep` command, which searches the output.

This text filtering technique will be covered in detail later in the course.

The `export` command is used to turn a local variable into an environment variable.
```shell
export variable
```
After exporting `variable1`, it is now an environment variable. It is now found in the search through the environment variables:
```shell
export variable1                                  
env | grep variable1
```
Result: `variable1=Something`

The `export` command can also be used to make a variable an environment variable upon its creation by using the assignment expression as the argument:
```shell
export variable2='Else'                           
nv | grep variable2        
```                     
Result: `variable2=Else`

To change the value of an environment variable, use the assignment expression:
```shell
variable1=$variable1' '$variable2                
echo $variable1         
```
Result: `Something Else`

Exported variables can be removed using the `unset` command:
```shell
unset variable2
```