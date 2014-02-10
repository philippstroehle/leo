#! /usr/bin/python

__author__ = 'philipp'
__dateOfCreation__ = '9/12/12'
import os
import sys
import getopt

import easygui as eg

import urllib

def process(arg):
    try:
        _search_term = urllib.quote(arg)
        os.system("google-chrome --app http://dict.leo.org/ende/index_en.html#/search=%s&searchLoc=0&resultOrder=basic&multiwordShowSingle=on"%_search_term)
    except Exception:
        print "There was an exception"




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
        inputs = "".join([arg for arg in args])
        print inputs
        process(inputs)# process() is defined elsewhere
    else:
        arg = eg.textbox(msg="Query leo: ", title = "Title", text = "")
        os.system("google-chrome --app http://dict.leo.org/ende?search=%s"%arg)


if __name__ == "__main__":
    main()


