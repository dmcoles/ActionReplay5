# Action Replay 5

## Introduction
This is an update to the Action Replay Cartridge developed by Datel Electronics for the Commodore Amiga. The original device was developed by Olaf Boehm and Joerg Zanger and sold as Action Replay, Action Replay II and finally Action Replay III. This device was designed to be used on the Commodore Amiga A500 and a version was also released for the A2000. The code was later extracted from the ROM and updated by Michael Pendec (BlackHawk/Paradox) and released as a software debugger called ARIV for the Amiga A1200/4000.

## New Features
This new release is based upon the code in both the Action Replay III cartridge and the software ARIV release. It combines all of the features from these but also has many new features and bug fixes. Here is a brief list of some of the new features:

* UK and Italian keymaps
* Ability to save preferences to flash memory
* Enhanced disk read/write routines
* Rob Northen Copylock finder
* Replaced Burst Nibbler with XCopy
* Utilisation of the full PAL screen area
* Ability to deploy Rob Northen DISKIO/DOSIO routines into memory
* Send and receive files and data via serial port
* AmigaXfer support

## Hardware And Software
This new Action Replay is designed to take full advantage of the DeMoN cart (build details here https://github.com/gerbilbyte/DeMoN) but will also work well in WinUAE and can even be applied to an original action Replay III cartridge.

There is also a software only mode (Similar to the ARIV software) that allows you to use this on machines that do not have the capability to run a hardare version of the Action Replay.

## Source Code and Licensing

The source code given here is partly my own work and partly taken from a reverse engineering of the Action Replay IV software (which itself was reverse engineering from the Action Replay III). For this reason it is not possible to release this source code under any form of open source licensing.

