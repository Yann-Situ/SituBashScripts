#/usr/bin/env bash
# to source it in .bashrc
#example : export MYBASHDIR="$HOME/Documents/SituBashScripts"
#PATH=$PATH":$MYBASHDIR"
#source "$MYBASHDIR/script-completion.bash"

_note_files(){
    let "i=${#COMP_WORDS[@]}-1"
    COMPREPLY=( $(compgen -W "$(ls "$HOME/Documents/notes_diverses/")" -- "${COMP_WORDS[$i]}") )
}

complete -F _note_files note

_script_completions()
{
    let "i=${#COMP_WORDS[@]}-1"
    COMPREPLY=($(compgen -W "$(showscript)" -- "${COMP_WORDS[$i]}"))
}

complete -F _script_completions addscript rmscript
