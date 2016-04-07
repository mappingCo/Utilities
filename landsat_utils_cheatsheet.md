# landsat-util

3 main functions

list
    Search for landsat tiles based on several search parameters.
    Download landsat images.
    Image processing and pan sharpening on landsat images.

## landsat search

landsat search [-p --pathrow] [--lat] [--lon] [-l LIMIT] [-s START] [-e END] [-c CLOUD] [-h]

cloud (min=0, max=100)

```
$ landsat search --cloud 8 --start "january 5 2015" --end "february 25 2015" -p 201,031
$ landsat search --lat 38.9004204 --lon -77.0237117
```

## landsat Download

landsat download sceneID [sceneID ...] [-h] [-b --bands]

```
$ landsat download LC82010312015012LGN00 # download by sceneID
$ landsat download LC80090452014008LGN00 LC80090452015008LGN00 LC80090452013008LGN00
$ landsat download LC82010312015012LGN00 --bands 432 # download only 4-3-2 bands
```

## landsat processing

landsat.py process path [-h] [-b --bands] [-p --pansharpen]

```
$ landsat process path/to/LC80090452014008LGN00.tar.bz
$ landsat process path/to/LC80090452014008LGN00
$ landsat process /home/user/landsat/downloads/LC82010312015012LGN00  --bands 432 # Specify bands 3, 5 and 1
$ landsat process path/to/LC80090452014008LGN00.tar.bz --pansharpen # Process and pansharpen a downloaded image

# Clip an image before processing
$ landsat process path/to/LC81920252015157LGN00.tar.bz --pansharpen --clip=-346.06658935546875,49.93531194616915,-345.4595947265625,50.2682767372753
--clip              Clip the image with the bounding box provided. Values must be in WGS84 datum
--bands             Specify bands. The bands should be written in sequence with no spaces Default: Natural colors (432)
--pansharpen        Whether to also pansharpen the process image. Pansharpening requires larger memory
--ndvi              Calculates NDVI and produce a RGB GTiff with seperate colorbar.
--ndvigrey          Calculates NDVI and produce a greyscale GTiff.

# download & proccess all in one line
$ landsat search --download --imageprocess --pansharpen  --cloud 4 --start "august 11 2013" --end "august 13 2013" pr 191 031
```

_northEast: o.LatLng
lat: 42.1239463688042
lng: -3.953018188476563
_southWest: o.LatLng
lat: 42.003769407625384
lng: -4.17755126953125
$ landsat process /home/sigon/landsat/downloads/LC82010312015012LGN00
peral clip 42.003769407625384, 42.1239463688042,
