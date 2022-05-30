# PROBLEM 4
---
### single quotes (' ')
- single quotes preserves the literal value of each character within the quotes, without any exception.
- example: if a=abcd  , this implies the expression '$a' will result in $a as, it has no specific meaning.

### double quotes (" ")
- preserves the literal value of all characters within the quotes, with the exception of $, \ ," etc.
- example: if a=abcd  , this implies the expression '$a' will result in abcd while considering it as a variable and expanding its value.
---

# PROBLEM 5
---
- export is a built-in bash function that can be used to declare a variable from the current shell, such that it can be used in any process within the shell.
- declaring a variable without shell will make it so that the variable is avialable only to the shell and not the processes.
- export, being a built-in function, gets directly interpreted by bash and thus can be used in external programs only within bash -c "export sample=1; echo \$sample"
