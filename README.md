# change_palette.sh
Brute forcing PNGs with 8-bit color map in steganography

Based on a script from http://stackoverflow.com/a/1214765/96656 and previous adaptations in https://github.com/ctfs/write-ups-2014/tree/master/plaid-ctf-2014/doge-stege

Shell script that uses two modified python scripts to first try to find the correct or interesting entry and then highlighting a range of colormaps based on the entry.

First run "bash change_palette.sh filename.png" and when you think you've found the interesting entry number, run "bash change_palette.sh filename.png entrynumber"
