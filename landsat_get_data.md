## libra

Libra is a browser for open Landsat 8 satellite imagery. Use it to browse, filter, sort, and download images.

Each circle on the map represents the number of available images at that location. Filters at the top of the map can be used to select a new date range, cloud cover percentage, and sun azimuth angle.

http://libra.developmentseed.org/

##  Accessing Landsat Data on AWS

The data are organized using a directory structure based on each scene’s path and row. For instance, the files for Landsat scene LC81390452014295LGN00 are available in the following location: s3://landsat-pds/L8/139/045/LC81390452014295LGN00/

The “L8” directory refers to Landsat 8, “139” refers to the scene’s path, “045” refers to the scene’s row, and the final directory matches the scene’s identifier, which uses the following naming convention: LXSPPPRRRYYYYDDDGSIVV, in which:

    L = Landsat
    X = Sensor
    S = Satellite
    PPP = WRS path
    RRR = WRS row
    YYYY = Year
    DDD = Julian day of year
    GSI = Ground station identifier
    VV = Archive version number

http://landsat-pds.s3.amazonaws.com/L8/201/031/LC82010312016060LGN00/index.html

https://s3-us-west-2.amazonaws.com/landsat-pds/L8/201/031/LC82010312015012LGN00/index.html
https://s3-us-west-2.amazonaws.com/landsat-pds/L8/201/031/LC82010312015028LGN00/index.html
https://s3-us-west-2.amazonaws.com/landsat-pds/L8/201/031/LC82010312015044LGN00/index.html
https://s3-us-west-2.amazonaws.com/landsat-pds/L8/201/031/LC82010312016015LGN00/index.html

http://landsat-pds.s3.amazonaws.com/L8/139/045/LC81390452014295LGN00/index.html
