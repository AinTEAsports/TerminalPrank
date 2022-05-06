# TerminalPrank
A terminal prank you can put on your friends' Linux terminal, to rickroll them everytime they open it


If you want to do all in one command you can do :
```bash
curl -sL https://raw.githubusercontent.com/AinTEAsports/TerminalPrank/main/main.sh | bash
```

Or if you want the mp3 prank :
```bash
curl -sL https://raw.githubusercontent.com/AinTEAsports/TerminalPrank/main/main_mp3.sh | bash
```

To execute the prank you'll need to do this on the target OS, you'll need to have 'main.sh' script on the target computer :
```bash
chmod +x ./main.sh
./main.sh
```

To remove it, you need to wait type in the terminal (if you need to sudo then do it, but you could do something wrong) :
```bash
rm -f $videoFilelocation
```

Or if you used main_mp3.sh :
```bash
rm -f $audioFilelocation
```

It is possible that this method doesn't work, you also can go in your rc file (`~/.bashrc` for bash, `~/.zshrc` for zsh) and remove the lines that play the rickroll. If the rickroll is too long or too loud you can access your rc file with a graphical text editor.
