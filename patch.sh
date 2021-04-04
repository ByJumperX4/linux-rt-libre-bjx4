#!/bin/sh
for f in ../patches/*; do 
    echo "[patch.sh] Using patch $f ..."
    (patch --verbose -p1 < $f)
done
