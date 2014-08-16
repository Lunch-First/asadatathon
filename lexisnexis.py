# lexusnexus.py

# Parse Lexus Nexus HTML results into text.
# Assumes each LN result document is broken into a separate HTML file.

from lxml import html
import glob
import sys
import string

def parse(filename,pclass='c8',spanclass='c2'):
    '''
    Parse single Lexus Nexus HTML document into plain text and write to file.

    Default output filename is input file name + ".txt.".

    parse(string) --> None (file writen to disk)
    '''

    # Build XPath query string
    xpquery = '//p[@class='+pclass+']/span[@class='+spanclass+']'

    with open(filename) as f:
        with open(filename+'.txt','w') as fout:
            for p in html.parse(f).xpath(xpquery):
                fout.write(filter(lambda x: x in string.printable,p.text_content())+'\n')

def parsedir(dirname,pclass=None,spanclass=None):
    '''
    Parse all LN HTML files in directory.
    '''

    if dirname[-1] == '/':
        files = glob.glob(dirname+'*')
    else:
        files = glob.glob(dirname+'/*')

    for filename in files:
        parse(filename,pclass,spanclass)

if __name__ == "__main__":
    dirname = sys.argv[1]
    if len(sys.argv) > 2:
        pclass = sys.argv[2]
    else:
        pclass = 'c8'
    if len(sys.argv) > 3:
        spanclass = sys.argv[3]
    else:
        spanclass = 'c2'
    parsedir(dirname,pclass,spanclass)
