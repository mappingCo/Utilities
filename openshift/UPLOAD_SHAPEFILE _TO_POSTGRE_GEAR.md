## UPLOAD SHAPE FILE TO POSTGRE GEAR AND ADD IT TO DB

upload

```
$ sftp <whatever>-name.rhcloud.com
$ cd app-root/data
$ put -r  /home/user/norwayLevels/zips.tar.gz

```
add to Db

```
$ ssh <whatever>-name.rhcloud.com
$ cd app-root/data
$ tar -zxvf zips.tar.gz
//shp2pgsql -I -s <SRID> <PATH/TO/SHAPEFILE> <SCHEMA>.<DBTABLE> | psql -d <DATABASE>
$ shp2pgsql -I -s 4326  zip  public.zips -g the_geom -W "latin1" | psql -h <whatever>-name.rhcloud.com -p 56406 -U dbuser --d dbname
```
