
```
#!/bin/bash

# Define a custom complete function for 'git checkout'.
___git_gco ()
{
    # Set the first word to git and insert checkout.
    COMP_WORDS=(git checkout ${COMP_WORDS[@]:1})
    # Increment the current word cursor, since we added one word.
    COMP_CWORD=$((COMP_CWORD + 1))

    # Show some debug information.
    # echo -n -e "\n${COMP_WORDS[0]}"
    # echo -n -e "\n${COMP_WORDS[1]}"
    # echo -n -e "\n${COMP_WORDS[$COMP_CWORD]}"
    # echo -n -e "\n${COMP_WORDS[@]}"

    # Call Git's default complete function.
    _git
}

___git_ga ()
{
    COMP_WORDS=(git add ${COMP_WORDS[@]:1})
    COMP_CWORD=$((COMP_CWORD + 1))
    _git
}

___git_gl ()
{
    COMP_WORDS=(git log ${COMP_WORDS[@]:1})
    COMP_CWORD=$((COMP_CWORD + 1))
    _git
}

___git_gp ()
{
    COMP_WORDS=(git pull ${COMP_WORDS[@]:1})
    COMP_CWORD=$((COMP_CWORD + 1))
    _git
}

___git_gif ()
{
    COMP_WORDS=(git diff ${COMP_WORDS[@]:1})
    COMP_CWORD=$((COMP_CWORD + 1))
    _git
}

___git_gs ()
{
    COMP_WORDS=(git status ${COMP_WORDS[@]:1})
    COMP_CWORD=$((COMP_CWORD + 1))
    _git
}
```
