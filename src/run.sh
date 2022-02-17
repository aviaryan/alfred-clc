#!/bin/zsh

# NOTES
#
# bash was not working
# `arg` goes as output from here
# `autocomplete` needed to keep ScriptFilter result
#

query="$1"
PATH=$PATH:/usr/local/bin
answer=$(echo "$query" | insect)

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
