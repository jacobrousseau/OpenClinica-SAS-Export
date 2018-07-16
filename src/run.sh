#!/bin/bash

# This (Bash)script converts an ODM 1.3 with OpenClinica extensions output file to
# 3 files which can be read by SAS: the map file, the data file and the script file
# It is based on the files with the same name from OpenClinica version 3.6 but adds
# a number of features and fixes some bugs:
# - addtion of the OpenClinica attribute 'SASFieldName' to the SAS description field
# - correct type mapping for the OpenClinica data file (the informat E8601DA)
# - fix of a bug where no category labels were loaded due to a integer value coded as 'empty'
#
# Accepts 1 command line argument: the file name of the ODM 1.3 extract

if test "$#" -ne 1; then
    echo "Converts OpenClinica ODM 1.3 (with extentions) exports to file for import into SAS"
    echo "Usage: run.sh [EXPORT_FILE_NAME]"
    exit 1;
fi


INPUT_FILE_NAME=$1;

echo -e 'Running ...\n'
java -cp ./saxon-8.7.jar net.sf.saxon.Transform $INPUT_FILE_NAME xml_convert_sas_map.xsl | xmllint --format - > ($INPUT_FILE_NAME)_SAS_MAP.xml
java -cp ./saxon-8.7.jar net.sf.saxon.Transform $INPUT_FILE_NAME xml_convert_sas_data.xsl | xmllint --format - > ($INPUT_FILE_NAME)_SAS_DATA.xml
java -cp ./saxon-8.7.jar net.sf.saxon.Transform $INPUT_FILE_NAME xml_convert_sas_format.xsl > ($INPUT_FILE_NAME)_SAS_FORMAT.sas
echo 'Finished'
