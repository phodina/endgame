To install the font
find the font:
(recsel is part of recutils)
guix search font | recsel -p NAME

Then install the package and update the font cache
guix install font-NAME
fc-cache -rv

