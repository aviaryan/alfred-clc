#!/bin/zsh

# NOTES
# 
# bash was not working
# `arg` goes as output from here
# `autocomplete` needed to keep ScriptFilter result
# 

# force set PATH (https://github.com/aviaryan/alfred-clc/issues/1)
# PATH=$($(echo $SHELL) -ic 'echo $PATH'):/usr/local/bin:$PATH

query=$1
PATH=$PATH:/usr/local/bin
answer=$(echo "$1" | insect)
# answer=$(which /usr/local/bin/insect)

cat << EOB
{"items": [

	{
		"uid": "$query",
		"title": "$answer",
		"subtitle": "Action to copy to clipboard",
		"arg": "$answer",
		"autocomplete": "$query",
		"icon": {
			"path": "icon.png"
		}
	}

]}
EOB
