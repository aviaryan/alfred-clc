#!/bin/zsh

# NOTES
#
# bash was not working
# `arg` goes as output from here
# `autocomplete` needed to keep ScriptFilter result
#

query="$1"

if [ -f "/opt/homebrew/bin/insect" ]; then
	brew_prefix="/opt/homebrew"
	echo "/opt/homebrew/bin detected as Homebrew binary directory" >&2
elif [ -f "/usr/local/bin/insect" ]; then
	brew_prefix="/usr/local"
	echo "/usr/local/bin detected as Homebrew binary directory" >&2
else
	printf "Unable to find path to Homebrew. Please ensure that it is installed from https://brew.sh/.\n" >&2
	exit 1
fi

PATH="$brew_prefix/bin:$PATH"
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
