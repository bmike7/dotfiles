#!/bin/bash

map_app () {
    case "$@" in
        "iTerm2") echo "󰊠";;
        "Vivaldi") echo "";;
        "Spotify") echo "󰓇";;
        "Mail") echo "";;
        "Finder") echo "";;
        "1Password") echo "";;
        "Slack" | "Teams") echo "󰒱";;
        "Notion Calendar") echo "󰨲";;
        "zoom.us") echo "";;
        *) echo "󰯆";;
    esac
}

map_app $@
