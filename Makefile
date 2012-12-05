#
# Makefile for install ez_venv
#
#

EZVENV_HOME=$(HOME)/.ez_venv
EZVENV_ETC=$(EZVENV_HOME)/etc
EZVENV_COMMANDS=$(EZVENV_HOME)/commands
EZVENV_VENVS=$(EZVENV_HOME)/venvs

install:
	if [ ! -d $(EZVENV_HOME) ]; \
        then mkdir $(EZVENV_HOME); \
        fi
	if [ ! -d $(EZVENV_ETC) ]; \
        then mkdir $(EZVENV_ETC); \
        fi
	if [ ! -d $(EZVENV_COMMANDS) ]; \
        then mkdir $(EZVENV_COMMANDS); \
        fi
	if [ ! -d $(EZVENV_VENVS) ]; \
        then mkdir $(EZVENV_VENVS); \
        fi

	cp -i ./ez_venv.sh $(EZVENV_ETC)/ez_venv.sh
	cp -i ./README.md $(EZVENV_ETC)/README.md

	curl -o $(EZVENV_COMMANDS)/virtualenv.py https://raw.github.com/pypa/virtualenv/master/virtualenv.py
