#!/bin/sh

# extract conda environment name from form
ENVIRONMENT="<%= context.qgis_version %>"

# load the required conda environment
source "%PREFIX%/utils/initialize.sh"
conda activate "%PREFIX%/envs/$ENVIRONMENT"

# set gdal and qgis environment variables
export GDAL_NUM_THREADS="ALL_CPUS"
export GDAL_CACHEMAX="25%"
export QGIS_GLOBAL_SETTINGS_FILE="%PREFIX%/etc/qgis_global_settings.ini"

# launch qgis
qgis --nologo --noversioncheck
