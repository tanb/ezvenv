Welcome to ezvenv manual.
=============================

Install:
        
        $ make install

        and Please add the following line to the end of your ~/.bashrc:
        
        source $HOME/.ezvenv/etc/ezvenv.sh

Uninstall:

        $ rm -rf $HOME/.ezvenv
        
        That's it. If you've added the source line to your ~/.bashrc, remove it. 


Usage:

        $ ezvenv list:
                List vertualenv like this

                EnvName        Description
                -------	-------------------
                env1	client app using wxPython
                envMyFW	for test new framework.


        $ ezvenv create PATH_TO_PYTHON ENV_NAME DESCRIPTION [OPTIONS]...:
                Create virtualenv named ENV_NAME.
                You *MUST* give PATH_TO_PYTHON, ENV_NAME, and DESCRIPTION.
                [OPTIONS] are virtualenv.py's.

        $ ezvenv delete ENV_NAME:
                delete virtualenv named ENV_NAME.
                Actually, this command remove the virtualenv directory in $HOME/.ezvenv/venvs/

        $ ezvenv activate ENV_NAME:
                activate the virtualenv.
                if you decide deactivate that env, just 
                
                $ deactivate
                