Bash script file that will install all the necessary packages using pacman and will uncomment [multilibs] and install xfce4 DE with xfce4-goodies and other packages including discord, steam, git, neofetch, alacritty, firefox.
it will also install an AUR and clone it into home which is paru repo and will install spotify.


This is a script I made personally for myself but I wanted to share it to others so it can be useful.

This repo is open-source and anyone can publish it anywhere and change things in it.

Installation Guide:

After you finish installing arch manually or using archinstall (if you want to use xfce4 then proceed with minimal installation without DE or WM otherwise this script will automaticlly install xfce4 so configure the script by removing xfce4 & xfce4-goodies in the code.)

Install steps:

Install git using `sudo pacman -S git`

Type `mkdir inst-script` to create a directory.

Run `git clone https://github.com/38eeD/install-script.git ~/inst-script`

Change directory using `cd inst-script/`

Give permission by running `chmod +x script.sh`

Execute `./script.sh` to run the script.

If you wonder why we did not update our package managee it is because the script will update it for you by executing `sudo pacman -Syu`
