#!/bin/bash
if [ "$1" -a "$2" ]
then
        if [ "$2" -ge 0 -a "$2" -le 255 ]
        then
                for i in $(seq 0 $2)
                do
                        ./change_palette2.py "$1" "range-color-$2+${i}.png" "${i}"
                done
        else
                echo "The range needs to be between 0 to 255."
        fi
elif [ "$1" ]
then
        if [ -f "$1" ]
        then
                for i in {0..255}
                do
                        ./change_palette.py "$1" "single-color-${i}.png" "${i}"
                done
        else
                echo "404. $1 NOT FOUND"
        fi
else
        echo " "
        echo "Usage: 'bash change_palette.sh filename.png' to scan through the 8bit color map"
        echo "highlighting a single entry in white while blacking out the rest. Files are"
        echo "saved in the same folder in the format of single-color-number.png."
        echo " "
        echo "'bash change_palette.sh filename.png rangenumber' to highlight a range of"
        echo "colormap entries starting from rangenumber. Files are saved in the same"
        echo "folder in the format of range-color-rangenumber+n.png."
        echo " "
fi
