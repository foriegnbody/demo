
import base64
import time
import datetime
import sys
import os
import subprocess
import httplib
import urllib
import re
import xml.dom.minidom
import xml.etree.ElementTree
import urllib;
import Queue
import sys


i = 0

FILENAME=''
try:
    FILENAME=sys.argv[1]
except:
    print 'usage:' + sys.argv[0] + " <filename> [ALL/AVG]"
    exit()
RESULTS=''
try:
    RESULTS=sys.argv[2]
except:
    RESULTS="ALL"


print "Using filename " + str(FILENAME)

#read file, fill arrays
stats = {}
with open(FILENAME, "r") as ins:
    for line in ins:
        if line.find('COUNTTHETIME') != -1:
            firstbits = line.split("COUNTTHETIME");
            bits = firstbits[1].split(":")
            bits[2]=bits[2].strip('\n')
            if bits[1] not in stats:
                stats[bits[1]]=[]
            stats[bits[1]].append(long(bits[2]))
            
        

for k in stats:
        if RESULTS == 'ALL' :
            print k + " AVG:" + str(round(sum(stats[k]) / float(len(stats[k])),2)) +  " VALUES:" + str(stats[k])
        else:
            print k +":" + str(round(sum(stats[k]) / float(len(stats[k])),2))
