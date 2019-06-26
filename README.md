Solar time vs standard time
===========================

This repository contains tools and data to draw an SVG map of the
difference between solar time and standard time.

See the discussion at <http://blog.poormansmath.net>, esp. <http://blog.poormansmath.net/how-much-is-time-wrong-around-the-world/> and <http://blog.poormansmath.net/the-time-it-takes-to-change-the-time/>.

Update by Kai:
-------------

I wanted to use this to display a map showing what the date is the world.
Thst is two zones: where it's yesterday/today and where it's today/tomorrow.
To get the basic display of time zones to work I had to make these changes:

* the script is called init_data.sh
* cities did not download, so I executed the last lines of the script manually
* converted the Python script draw.py to Python 3
* worked around having no cities data in the draw.py script
* added some header stuff to svg template so it displays in browser (but see problems)
* requirements.txt lists the Python packages needed

Problems to be solved:

* the SVG file is way too detailed, very slow and bulky to use, the map is too detailed
* the SVG file displays properly in Inkscape, but not in the browser, where pathclipped time zones don't display

Instructions
------------

0. Run `pip install -r requirements.txt` to install needed Python packages.

1. Run `init_data.sh` to download the required data (this comes from
   Eric Muller and ESRI).

2. Run `draw.py` to create `base.svg`.

3. Use inkscape (at least 0.91) to convert the SVG intp a PNG 6000px
   wide, `base.png`.

4. A few corrections required because of the staleness of the
   shapefile data are included in the GIMP file `map.xcf`. Just add
   the PNG as the bottom layer of the XCF and export `map.png`.

5. Roll and crop the map running `finalize_map.sh`.


Other tools
-----------

`map_helper.html` is a static tool that uses Google Maps API to easily
get coordinates for one or more polylines, drawn directly on the map.
