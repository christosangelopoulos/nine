#! /bin/bash
#make sh executable, copy it to the $PATH
chmod +x nine.sh
[[ -d $HOME/.local/bin/ ]]&&cp nine.sh $HOME/.local/bin/&&INSTALL_MESSAGE="The script was copied to\n\e[33m$HOME/.local/bin/\e[m\nProvided that this directory is included in the '\$PATH', the user can run the script with\n\e[33m$ nine.sh\e[m\nfrom any directory.\nAlternatively, the script can be run with\n\e[33m$ ./nine.sh\e[m\nfrom the nine/ directory."||INSTALL_MESSAGE="The script has been made executable and the user can run it with:\n\e[33m$ ./nine.sh\e[m\nfrom the nine/ directory."
# create the necessary directories and files:
mkdir -p $HOME/.local/share/nine $HOME/.config/nine/
cp nine.png $HOME/.local/share/nine/

echo -e "#Acceptable theme values:letters, numbers.
CHARACTER_THEME=numbers

#Acceptable values for cursor color:yellow, red, cyan, blue, magenta, gray
CURSOR_COLOR=red

#Acceptable notification toggle values: yes / no
NOTIFICATION_TOGGLE=yes

#Acceptable cheatsheet toggle values: yes / no. This can also be controlled while playing.
CHEATSHEET_TOGGLE=yes

#Text editor to open config file
PREFERRED_EDITOR=${EDITOR-nano}

#Acceptable values: vim, aswd. Arrow keys are hardcoded and work in all options.
NAVIGATION_KEYS=vim">$HOME/.config/nine/nine.config
echo -e "$INSTALL_MESSAGE"
