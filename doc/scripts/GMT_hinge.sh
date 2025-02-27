#!/usr/bin/env bash
gmt begin GMT_hinge ps
	gmt makecpt -Cglobe -T-8000/3000
	gmt colorbar -C  -Baf -Dx0/0+w4.5i/0.1i+h -W0.001 
	gmt colorbar -Cglobe  -Baf -Dx0/0+w4.5i/0.1i+h -W0.001 -Y0.5i 
	echo 2.25 0.1 90 0.2i | gmt plot -R0/4.5/0/1 -Jx1i -Sv0.1i+a80+b -W1p -Gblack 
	gmt text -F+f12p+jCB <<- EOF 
	2.25	0.35	HINGE
	EOF
gmt end
