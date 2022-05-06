# TerminalPrank
A terminal prank you can put on your friends' Linux terminal, to rickroll them everytime they open it

___________________________________________________

1- Installation

To execute the prank you'll need to execute those commands on the target machine :
```bash
git clone https://github.com/AinTEAsports/TerminalPrank
```

Now this is good, you have 2 choices : `main.sh` which is the basic version, with the rickroll, and `main_mp3.sh` which is the version only audio, less fun but harder to detect where it is from


If you choose `main.sh` execute those commands :
```bash
chmod +x ./main.sh
./main.sh
```
And if you choose `main_mp3.sh` execute those commands :
```bash
chmod +x ./main_mp3.sh
./main_mp3.sh
```

___________________________________________________

If you want to do all the prank setup in one command you can do :
```bash
curl -sL https://raw.githubusercontent.com/AinTEAsports/TerminalPrank/main/main.sh | bash
```

Or if you choose the mp3 prank :
```bash
curl -sL https://raw.githubusercontent.com/AinTEAsports/TerminalPrank/main/main_mp3.sh | bash
```

___________________________________________________

2- Remove the prank

To remove it, you need to wait type in the terminal :
```bash
rm -f $videoFilelocation
```

Or if you used main_mp3.sh :
```bash
rm -f $audioFilelocation
```

It is possible that this method doesn't work, you also can edit your rc file (`~/.bashrc` for bash, `~/.zshrc` for zsh, ...) with nano / vim / emacs (or whatever you use) and remove the lines that play the rickroll.

If the rickroll is too long or too loud you can access your rc file with a graphical text editor, to avoid aving to be rickrolled.

___________________________________________________

Note : 

`PS : ` this prank also works if you connect to the machine via SSH
