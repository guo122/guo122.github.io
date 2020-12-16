
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

- `:help CTRL-A`
- `:help cpo-<letter>`

- `:help i_CTRL-H`
- `:help i_CTRL-W`
- `:help i_CTRL-X`
- `:help i_<Up>`
- `:help v_o`
- `:help c_%`

- `:help -t`
- `:help 'number'`
- `:help :s`
- `:help E37`
- `:help >cont`

