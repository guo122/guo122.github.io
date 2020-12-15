
# Getting Started

## 01 About the manuals

### 01.1 Two manuals

- Press *CTRL-]* to jump to a subject under the cursor.
- Press *CTRL-O]* to jump back (repeat to go further back).

### 01.2 Vim installed

- usr_90.txt
- the *compatible* option should be off. You can check it with this command: `:set compatible?`
- List all sourced script names: `:scriptnames`

### 01.3 Using the Vim tutor

- `> vimtutor`

```
> vim --clean -c 'e $VIMRUNTIME/tutor/tutor' -c 'w! TUTORCOPY' -c 'q'
> vim --clean TUTORCOPY
// The --clean argument makes sure Vim is started with nice defaults.
```

## 02 The first steps in Vim

### 02.1 Running Vim for the First time

### 02.2 Inserting text 

- `:set showmode`

### 02.3 Moving around

```
    k
h     l
  j
```

### 02.4 Deleting characters

- *x*
- *dd*
- *J*

### 02.5 Undo and Redo

- *u*
- *CTRL-R*

### 02.6 Other editing commands

- *Q_in*

### 02.7 Getting out

- *ZZ*

### 02.8 Finding help

- *CTRL-T* pop tag
- *CTRL-O* jump to older position
- When you need to get help for a control character command (for example, CTRL-A), you need to spell it with the prefix "CTRL-".
`:help CTRL-A`
- To identify other modes, use a mode prefix. If you want the help for the insert-mode version of a command, use "i_". For CTRL-H this gives you the following command:
`:help i_CTRL-H`
- When you start the Vim editor, you can use several command-line arguments. These all begin with a dash (-). To find what the -t argument does, for example, use the command:
`:help -t`

