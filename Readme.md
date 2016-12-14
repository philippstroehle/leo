Readme
==================

This utility (which is in fact a little python script) lets the user search for words on leo.org, a popular tranlation website and forum. The specified search term (in German) is looked up and the corresponding result is returned via google's Chrome browser.

To run this script conveniently from the command line, place it on your $PATH.

In the case of Ubuntu Linux 13.10, I place this tool in /usr/local/bin/.

To use it, simply type

	leo "ein paar schwierige Wörter" 


== Alternative approaches ==

http://ubuntuforums.org/showthread.php?t=1087457 to use Google Translate from the command line


= Thesaurus =

This script allows for a quick look up from the command line.
For easier usability, I have added an alias to my ~/.bashrc:
	alias the="thesaurus"
