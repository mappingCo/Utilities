# conda commands

```
$ conda info --envs # list envs
geospatial               /home/user/miniconda3/envs/geospatial
kml_env                  /home/user/miniconda3/envs/kml_env
root                  *  /home/user/miniconda3

$ conda create --name xls2geojson geojson xlrd # create new env
$ source activate <envName>  # activate env
$ conda remove --name <envName> --all # remove env
$ conda list # list packages on current env
$ conda install numpy # install new package
$ pip install <packageName> # install a package with pip
$ conda remove <packageName> # remove package

$ conda env export > environment.yml # export env file
```

### create an env with landsat utils (for some reason I need to load most of the packages before installing landsat-util with pip, if I let pip to install dependencies it gives me an error)

```
conda create --name remotesensing numpy scipy pyparsing tornado cycler pytz dateutil cycler scikit-image matplotlib pytz nose pycurl rasterio
source activate remotesensing
pip install landsat-util

```
