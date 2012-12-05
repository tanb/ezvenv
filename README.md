Welcome to ez_venv manual.
=============================

Install:
        
        $ make install

        and Please add the following line to the end of your ~/.bashrc:
        
        source $HOME/.ez_venv/etc/ez_venv.sh

Uninstall:

        $ rm -rf $HOME/.ez_venv
        
        That's it. If you've added the source line to your ~/.bashrc, remove it. 


Usage:

        $ez_venv list:
                List vertualenv like this

                EnvName        Description
                -------	-------------------
                env1	client app using wxPython
                envMyFW	for test new framework.


        $ez_venv create PATH_TO_PYTHON ENV_NAME DESCRIPTION [OPTIONS]...:
                Create virtualenv named ENV_NAME.
                You *MUST* give PATH_TO_PYTHON, ENV_NAME, and DESCRIPTION.
                [OPTIONS] are virtualenv.py's.

        $ez_venv delete ENV_NAME:
                delete virtualenv named ENV_NAME.
                Actually, this command remove the virtualenv directory in $HOME/.ez_venv/venvs/

        $ez_venv activate ENV_NAME:
                activate the virtualenv.
                if you decide deactivate that env, just 
                
                $ deactivate
                