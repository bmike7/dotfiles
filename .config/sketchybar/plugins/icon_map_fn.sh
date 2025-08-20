#!/bin/bash

map_app () {
    case "$@" in
        "Ghostty") echo "󰊠";;
        "Vivaldi") echo "";;
        "Spotify") echo "󰓇";;
        "Mail") echo "";;
        "Finder") echo "";;
        "1Password") echo "";;
        "Slack" | "Teams") echo "󰒱";;
        "Notion Calendar") echo "󰨲";;
        "zoom.us") echo "";;
        "Microsoft Teams") echo "";;
        *) echo "$@";;
    esac
}

map_app $@
