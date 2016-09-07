intaglio
===========================

An old style map made with Mapbox Studio Classic. I am hoping to emulate the look of old copper plate etchings.

Currently a work in progress!

[View on Mapbox](https://api.mapbox.com/v4/wknowles.fdb6596f/page.html?access_token=pk.eyJ1Ijoid2tub3dsZXMiLCJhIjoiY2lnN3VlYXQ1MWt0Z3RlbWFqY3ltNjlzZiJ9.bl-TFJb8BkqTPRD8w8XJmA#3/35.46/-46.58)

Data Sources:
* mapbox streets v6
* [Natural Earth 10M Graticules](http://www.naturalearthdata.com/downloads/10m-physical-vectors/10m-graticules/) 1, 5, & 10
* [Natural Earth 10M Bathymetry](http://www.naturalearthdata.com/downloads/10m-physical-vectors/10m-bathymetry/)
* [Natural Earth 10M Coastline](http://www.naturalearthdata.com/downloads/10m-physical-vectors/10m-coastline/) - I used this in QGIS to create buffers for the waterlines ~~(I would love to find a way to correct for distortion at high latitudes)~~ see [Creating Coastal Vignettes for use in web mapping](https://wknowles.github.io/creating-coastal-vignettes.html) for tutorial on reprojecting shapefiles for web maps.
