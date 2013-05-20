# NFA NearDiv 7 #

This is an NFA created to find all numbers (in string form) that are near
divisible by 7. A number is said to be near divisible iff, when one digit 
is removed, the new remaining number is divisible by 7. In this NFA we read
the number in backwards.

Created by unsignedzero (David Tran) originally on 09-26-2012 using 
GHC v 7.4.1.

This code can be executed with runhaskell or manually loaded into ghci.
The main function to call is mod7.

# Version/Changelog #

## 1.1 05-20-2013 #
* Additional comments added to clarify the code.
* Readme converted to Markdown format and cleaned up.

## 1.0 10-09-2012 #
* Rather than print 0 or 1, true or false is printed, making it easier to read.

## 0.9 10-08-2012 #
* Bad inputs (those that contain non-numerical characters) return 0
* Interactive main created.
* README created.

## 0.5 09-26-2012 #
* Original working code posted. Only works in GHCI as no main was created.
