# configure conda prefix and environment name
PREFIX=PREFIX_PLACEHOLDER
ENVIRONMENT="<%= context.qgis_version %>"

# load the required conda environment
source "$PREFIX/utils/initialize.sh"
conda activate $PREFIX/envs/$ENVIRONMENT

# set gdal and qgis environment variables
export GDAL_NUM_THREADS="ALL_CPUS"
export GDAL_CACHEMAX="25%"
export QGIS_GLOBAL_SETTINGS_FILE="$PREFIX/config/qgis_global_settings.ini"

# launch qgis
qgis --nologo --noversioncheck
