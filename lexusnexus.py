# lexusnexus.py

# Parse Lexus Nexus HTML results into text.
# Assumes each LN result document is broken into a separate HTML file.

from lxml import html
import glob
import sys
import string

def parse(filename):
    '''
    Parse single Lexus Nexus HTML document into plain text and write to file.

    Default output filename is input file name + ".txt.".

    parse(string) --> None (file writen to disk)
    '''

    with open(filename) as f:
        with open(filename+'.txt','w') as fout:
            for p in html.parse(f).xpath("//p[@class='c8']/span[@class='c2']"):
                fout.write(filter(lambda x: x in string.printable,p.text_content())+'\n')

def parsedir(dirname):
    '''
    Parse all LN HTML files in directory.
    '''

    if dirname[-1] == '/':
        files = glob.glob(dirname+'*')
    else:
        files = glob.glob(dirname+'/*')

    for filename in files:
        parse(filename)

if __name__ == "__main__":
    dirname = sys.argv[1]
    parsedir(dirname)
