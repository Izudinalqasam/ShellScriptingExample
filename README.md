# ShellScriptingExample

This is the basic Schell Scripting tutorial with an example

**File existence checks**:

* -f file True if the file exists and is an ordinary file.
* -d file True if the file exists and is a directory.
* -s file True if the file exists and is not empty.
* -c file True if the file exists and is a character device file.
* -b file True if the file exists and is a block devise file.

**File access checks:**

* -r file True if the file exists and has read permission to it.
* -w file True if the file exists and has a write permission to it.
* -x file True if the file exists and has a execute permission to it

**String Check Operation:**

* [ -n string ] True if the string is not zero.
* [ -z string ] True if the string is zero.
* [ string ] True if the string is not empty.

**Special symbols with additional info:**

* $# Total number of positional parameters.
* $@ Represents all the parameters i.e. $1 to the end.
* $? Pass or fail status of the last command executed.
* \$$ Process id of the currently running shell.
* $! Process id of the last run background process.
