#!/bin/bash

PATH_EZVENV_HOME=$HOME/.ezvenv
PATH_VENVS=$PATH_EZVENV_HOME/venvs
PATH_EZVENV_ETC=$PATH_EZVENV_HOME/etc
PATH_EZVENV_COMMANDS=$PATH_EZVENV_HOME/commands
VENV=$PATH_EZVENV_COMMANDS/virtualenv.py
PATH_EZVENV_MAN=$PATH_EZVENV_ETC/README.md

__ezvenv_list()
{
    echo -e "EnvName\tDescription"
    echo -e "-------\t-------------------"
    for file in `ls $PATH_VENVS`; do
        echo -ne "$file\t"
        PATH_DESC=$PATH_VENVS/$file/.ezvenv_desc
        if [ -s $PATH_DESC ]; then
            echo -n `cat $PATH_DESC`
        fi
        echo -ne "\n"
    done
}

__ezvenv_activate()
{
    source $PATH_VENVS/$2/bin/activate
    builtin hash -r
}

__ezvenv_create()
{
    PYTHON=$2
    ENV_NAME=$3
    DESCRIPTION=$4

    if [[ -s $PYTHON ]] ; then
        $PYTHON $VENV $PATH_VENVS/$ENV_NAME ${@:5}
        PATH_DESC=$PATH_VENVS/$ENV_NAME/.ezvenv_desc
        touch $PATH_DESC
        echo $DESCRIPTION > $PATH_DESC 
    else
        (
            echo -n "python's not exist: "
            echo $PYTHON 
        ) 1>&2
    fi
}

__ezvenv_delete()
{
    ENV_NAME=$2
    PATH_ENV=$PATH_VENVS/$ENV_NAME
    if test -n "$ENV_NAME" -a -s $PATH_ENV; then
        rm -rf $PATH_ENV
    else
        (
            echo -n "the venv's not exist: "
            echo $ENV_NAME
        ) 1>&2
    fi
    
}

__ezvenv_help()
{
    less $PATH_EZVENV_MAN
}

__ezvenv_run()
{
    if test $# = 0; then
        __ezvenv_help
    else
        case $1 in
            list) __ezvenv_list "$@" ;;
            activate) __ezvenv_activate "$@" ;;
            create) __ezvenv_create "$@" ;;
            delete) __ezvenv_delete "$@" ;;
            help) __ezvenv_help "$@" ;;
        esac

        builtin hash -r
    fi
}

ezvenv()
{
    __ezvenv_run "$@"
}

