Welcome to ez_venv manual.
=============================

Install:
        
        $ make install

        and Please add the following line to the end of your ~/.bashrc:
        
        source $HOME/.ez_venv/etc/ez_venv.sh
        

Usage:

        list:
                list name of vertualenv

        create PATH_TO_PYTHON ENV_NAME DESCRIPTION [OPTIONS]...:
                create virtualenv named ENV_NAME.

        delete ENV_NAME:
                delete virtualenv named ENV_NAME.

        activate ENV_NAME:
                activate the virtualenv.