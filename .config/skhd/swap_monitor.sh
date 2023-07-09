#!/bin/bash
swap_monitor() {
	window_ids=$(yabai -m query --windows --space | jq ".[] | .id")
	for id in $window_ids; do
		yabai -m window "$id" --display "$1"
	done
	yabai -m display --focus "$1"
}
swap_monitor "$1"
