#!/usr/bin/python

import os, sys
from time import sleep
from colored import fg, bg, attr

# --

def clear():
    os.system("clear")

def main():

    clear()
    space = ' ' * 2

    print('\n')
    print(space, "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓")
    print(space, "┃ Options for %sbacking%s-up %sconfig%sFILES:   ┃" % (fg(4), attr(0), fg(5), attr(0)))
    print(space, "┃                                       ┃")
    print(space, "┃   -%sa%s  ┃ Backup %severything%s             ┃" % (fg(5), attr(0), fg(6), attr(0)))
    print(space, "┃   -%sR%s  ┃ %sReplace%s current files with    ┃" % (fg(5), attr(0), fg(6), attr(0)))
    print(space, "┃         the Backup-files              ┃")
    print(space, "┃                                       ┃")
    print(space, "┃                                       ┃")
    print(space, "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛") #┏┃━┛┗┓═


def Backup_All():

    delay = 0.5
    space = ' ' * 2

    print('\n')
    print(space, "backing-up %szshrc%s File\n" % (fg(4), attr(0)))
    sleep(delay)
    os.system("cp ~/.zshrc ConfigFiles/")
    os.system("cp -r ~/Documents/Shell/zsh/ ConfigFiles/")
    
    print(space, "backing-up %sbashrc%s File\n" % (fg(4), attr(0)))
    sleep(delay)
    os.system("cp ~/.bashrc ConfigFiles/")

    print(space, "backing-up %svimrc%s File\n" % (fg(4), attr(0)))
    sleep(delay)
    os.system("cp ~/.vimrc ConfigFiles/")

    print(space, "backing-up %spolybar%s Files\n" % (fg(4), attr(0)))
    sleep(delay)
    os.system("cp ~/.config/polybar/config ConfigFiles/polybar")
    os.system("cp -r ~/.config/polybar/scripts/ ConfigFiles/polybar")

    print(space, "backing-up %sbspwm%s Files\n" % (fg(4), attr(0)))
    sleep(delay)
    os.system("cp -r ~/.config/bspwm/ ConfigFiles/")

    print(space, "backing-up %stermite%s Files\n" % (fg(4), attr(0)))
    sleep(delay)
    os.system("cp -r ~/.config/termite/ ConfigFiles/")

    print(space, '%sDone%s!' % (fg(3), attr(0)))

def UseBackupFiles():

	delay = 0.5
	space = ' ' * 2

	print('\n')
	print(space, "replacing %szshrc%s File\n" % (fg(4), attr(0)))
	sleep(delay)
	os.system("cp ConfigFiles/.zshrc ~/.zshrc")
	os.system("cp -r ConfigFiles/zsh/ ~/Documents/Shell/ ")

	print(space, "replacing %sbashrc%s File\n" % (fg(4), attr(0)))
	sleep(delay)
	os.system("cp ConfigFiles/.bashrc ~/.bashrc")

	print(space, "replacing %svimrc%s File\n" % (fg(4), attr(0)))
	sleep(delay)
	os.system("cp ConfigFiles/.vimrc ~/.vimrc")

	print(space, "replacing %spolybar%s Files\n" % (fg(4), attr(0)))
	sleep(delay)
	os.system("cp ConfigFiles/polybar/config ~/.config/polybar/config ")
	os.system("cp -r ConfigFiles/polybar/scripts/ ~/.config/polybar/scripts/")

	print(space, "replacing %sbspwm%s Files\n" % (fg(4), attr(0)))
	sleep(delay)
	os.system("cp -r ConfigFiles/bspwm/ ~/.config/bspwm/ ")

	print(space, "replacing %stermite%s Files\n" % (fg(4), attr(0)))
	sleep(delay)
	os.system("cp -r ConfigFiles/termite/ ~/.config/termite/ ")

	print(space, '%sDone%s!' % (fg(3), attr(0)))


# --

try:

    if sys.argv[1] == '-a':
        Backup_All()

    elif sys.argv[1] == '-R':
    	UseBackupFiles()

except Exception as e:
    main()
