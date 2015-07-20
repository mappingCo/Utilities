# kartverket utilities

* donwload
http://data.kartverket.no/download/content/geodataprodukter?korttype=3594&aktualitet=All&datastruktur=All&dataskema=All

* Sosicon: convert SOSI to shape
http://sosicon.espenandersen.no/
./sosicon -2shp sourcefile.sos

* sosicon: Filter by OBJTYPE

./sosicon -2shp -t "Skog, Park" Arealdekke.sos

* sosicon: Filter by geometry

	* KURVE (curve/polyline)
	* FLATE (surface/polygon)
	* PUNKT (point)

./sosicon -2shp -g FLATE Arealdekke.sos

* gdal-sosi: https://trac.osgeo.org/gdal/wiki/SOSI
* sosi to osm: sosi2osm -> sudo apt-get install sosi2osm

* WMS list
http://status.kartverket.no/tjenester/openwms.py?_ga=1.47413287.1295584220.1436958326

* epgs list
http://kartkatalog.miljodirektoratet.no/Map_catalog_WMS_GetMap.asp

EPSG:32630	UTM - zone 30 (WGS84)
EPSG:32631	UTM - zone 31 (WGS84)
EPSG:32632	UTM - zone 32 (WGS84)
EPSG:32633	UTM - zone 33 (WGS84)
EPSG:32634	UTM - zone 34 (WGS84)
EPSG:32635	UTM - zone 35 (WGS84)
EPSG:32636	UTM - zone 36 (WGS84)
EPSG:25830	UTM - zone 30 (Euref89)
EPSG:25831	UTM - zone 31 (Euref89)
EPSG:25832	UTM - zone 32 (Euref89)
EPSG:25833	UTM - zone 33 (Euref89)
EPSG:25834	UTM - zone 34 (Euref89)
EPSG:25835	UTM - zone 35 (Euref89)
EPSG:25836	UTM - zone 36 (Euref89)
EPSG:4326	Geographic WGS84 (decimal degrees)
EPSG:4267	Geographic NAD27 (decimal degrees)
EPSG:4269	Geographic NAD83 (decimal degrees)