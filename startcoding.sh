#!/bin/bash

#short name = (short-name long-name "-->" directory 1:has jupyter notebook)
# this file is symlinked from the home
# ln -s /media/dersu/ExtraDrive1/code/start-os/startcoding.sh ~/startcoding.sh

kw=("kw" "kw-report" "-->" "baut-code/kw-report/" 1)
coin=("coin" "coinbase-trading" "-->" "baut-code/coinbase-trading/" 1)
daot=("daot" "daot-code" "-->" "daot-code/" 0)

# help flag: display project details
if [ "$1" == "-h" ]; then
    echo ${kw[@]}
    echo ${coin[@]}
    echo ${daot[@]}
fi

# otherwise, identify project 
if [ "$1" != "-h" ]; then

    if [ "$1" == "kw" ]; then
	project_path=${kw[3]}
	has_notebook=${kw[4]}
    elif [ "$1" == "coin" ]; then
	project_path=${coin[3]}
	has_notebook=${coin[4]}
    elif [ "$1" == "daot" ]; then
	project_path=${daot[3]}
	has_notebook=${daot[4]}
    else
	echo "project not found"
    fi

    
    codepath="/media/dersu/ExtraDrive1/code"
    full_path="$codepath/$project_path"

    # Go to directory of project
    cd $full_path

    # Start environment & notebook if available
    # pipenv shell
    if [ "$has_notebook" = 1 ]; then
	pipenv run jupyter notebook # --ip=0.0.0.0
    fi
fi
