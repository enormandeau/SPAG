#!/bin/bash
pandoc -s -V fontsize=11pt \
    -V geometry:margin=0.3in \
    fichiers_utiles/fiche_de_vol.md \
    -o fichiers_utiles/fiche_de_vol.pdf

