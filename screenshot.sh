/bin/bash
now=$(date +"Screenshot_%m_%d_%Y__%::z")
cd ~/Pictures/Screenshots
scrot TEMPORARYSHOT.png
convert -crop +1920+0 TEMPORARYSHOT.png TEMPORARYSHOT2.png
rm TEMPORARYSHOT.png
convert -crop -1920+0 TEMPORARYSHOT2.png $now.png
rm TEMPORARYSHOT2.png
