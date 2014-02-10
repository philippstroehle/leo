#! /usr/bin/python

__author__ = 'philipp'
__dateOfCreation__ = '9/12/12'
import os
import sys
import getopt

import easygui as eg

def process(arg):
    if arg:
        # os.system("google-chrome --app http://translate.google.com/#de/en/%s"%arg)
        # os.system("google-chrome --app http://www.dict.cc/?s=%s"%arg)
        os.system("google-chrome --app http://dict.leo.org/ende?search=%s"%arg)
#        os.system("google-chrome --app http://www.multitran.ru/c/m.exe?CL=1&s=Essen&l1=3")
#        http://www.multitran.ru/c/m.exe?CL=1&s=Essen&l1=3





def main():
# parse command line options
    try:
        opts, args = getopt.getopt(sys.argv[1:], "h", ["help"])
    except getopt.error, msg:
        print msg
        print "for help use --help"
        sys.exit(2)
        # process options
    for o, a in opts:
        if o in ("-h", "--help"):
            print __doc__
            sys.exit(0)
            # process arguments

    if args:
        process("%20".join([arg for arg in args])) # process() is defined elsewhere
    else:
        arg = eg.textbox(msg="Query leo: ", title = "Title", text = "")
        os.system("google-chrome --app http://dict.leo.org/ende?search=%s"%arg)

#    os.system("firefox -new-window http://dict.leo.org/ende?search=spiegel")

if __name__ == "__main__":
    main()


