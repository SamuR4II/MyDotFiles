#! /usr/bin/python

import os
import subprocess

# --

def main():

    result = os.popen('''ps aux | grep -i "musikcube" | grep -v grep''')

    if result.read() == '':
        print("MKE not running")

    else:
        os.system("playerctl --player=musikcube metadata --format '{{title}}' | awk -F '/Chill' '{print $2}'")

    print(str(result.read()))

main()
