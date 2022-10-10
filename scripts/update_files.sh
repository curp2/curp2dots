#!/bin/bash

dotDirs=("/etc/lightdm" "/etc/X11" "/etc/portage/" "/etc/laptop-mode" "/home/rp/.config/flavours" "/home/rp/.config/snownews" "/home/rp/.config/nethack" "/home/rp/.config/mpv" "/home/rp/.config/neofetch")

for str in ${dotDirs[@]}; do
	cp -r $str ..
done
