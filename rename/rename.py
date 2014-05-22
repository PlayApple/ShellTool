#! /usr/bin/env python                                                            
import sys, string, os
for root, dir, files in os.walk(sys.argv[1]):
    for file in files:
        newname = string.join(string.split(file, sys.argv[2]), sys.argv[3])
        newpath = sys.argv[1] + newname
        oldpath = sys.argv[1] + file
        try:
            os.rename(oldpath, newpath)
        except ValueError:
            print "Error when rename the file " + oldpath
        except NameError:
            print "Error when rename the file " + oldpath
        except OSError:
            print newpath + " The file is already exist!"