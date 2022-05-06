# TerminalPrank
A terminal prank you can put on your friends' Linux terminal, to rickroll them everytime they open it


To execute the prank you'll need to do this on the target OS, you'll need to have 'main.sh' script on the target computer :
chmod +x ./main.sh
./main.sh


To remove it, you need to wait type in the terminal (if you need to sudo then do it, but you could do something wrong) :
rm -f $videoFile

It is possible that this method doesn't work, you also can go in your rc file (~/.bashrc for bash, ~/.zshrc for zsh) and remove the lines that play the rickroll. If the rickroll is too long or too loud you can access your rc file with a graphical text editor.

