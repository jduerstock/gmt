#!/usr/bin/env bash
gmt begin GMT_-B_time2 ps
  gmt set FORMAT_DATE_MAP "o dd" FORMAT_CLOCK_MAP hh:mm FONT_ANNOT_PRIMARY +9p
  gmt basemap -R1969-7-21T/1969-7-23T/0/1 -JX5i/0.2i -Bpa6Hf1h -Bsa1K -BS
  gmt basemap -Bpa6Hf1h -Bsa1D -BS -Y0.65i
gmt end
