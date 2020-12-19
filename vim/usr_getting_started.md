
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

## 03 Moving around

### 03.6 Telling where you are

- `CTRL-G` show where you are.
- `:set ruler/ru` enable ruler.

### 03.8 Simple searches

- `:set ignorecase` ignoring case
- `*``#` searching for a ward in the text
- `/\<the\>` searching for whole words.
- `:set hlsearch` highlighting matches.
- `:set incsearch` display the match for the string while you are still typing it.

### 03.10 Using marks

- `:jumps` gives a list of positions you jumped to.

- `:marks` get a list of marks.
- `m{mark}` place a mark.
- `'{mark}` jump to mark.

## 04 Making small changes

### 04.1 Operators and motions

- `d4w` delete four words.
- `c4w` just like "d" operator, except it leaves you in Insert mode.

### 04.2 Changing text

SHORTCUTS

- `x``dl` delete character under the cursor.
- `X``dh` delete character left of the cursor.
- `D``d$` delete to end of the line.
- `C``c$` change to end of the line.
- `s``cl` change one character.
- `S``cc` change a whole line.

### 04.3 Repeating a change

- `.` It repeats the last change.

### 04.4 Visual mode.

- `v`
- `V` selecting lines.
- `CTRL-V` selecting blocks.
- `o` only takes you to one of the other corners.
- `O` move to the other corner in the same line.

### 04.7 Using the clipboard

- `"*y` copy to the clipboard.
- `"*p` put text from the clipboard.

### 04.8 Text objects.

- `daw` delete a word.

## 05 Set your settings

### 05.1 The vimrc file.

- `:edit $MYVIMRC` 
- `:version` mentions the name of the "user vimrc file" Vim looks for.

### 05.3 The defaults.vim

- `set backspace=indent,eol,start`
- `set showcmd`
- `set wilemenu`
- `filetype plugin indent on`


### 05.4 Simple mappings

- `:map <F5> i{<Esc>ea}<Esc>`


### 05.5 Adding a package

- `packadd! matchit`
- `:help matchit`

### 05.6 Adding a plugin

### 05.7 Adding a help file

### 05.8 The option window

- `:options` 

### 05.9 Often used options

- `:set iskeyword&`
- `:set ignorecase`
- `:set nowrap`
- `:set list`

## 06 Using syntax highlighting

## 07 Editing more than one file

### 07.1 Edit another file

- `:hide edit foo.txt`

### 07.2 A list of files

- `:previous`
- `:next`
- `:args` where am i










