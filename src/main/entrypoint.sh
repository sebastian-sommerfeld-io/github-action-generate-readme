#!/bin/bash
# @file entrypoint.sh
# @brief Entrypoint for the Docker image. Shoulders the actual workload of this image.
#
# @description The script represents the entrypoint for the Docker image and shoulders the actual
# workload of this image.
#
# CAUTION: Do not invoke directly. It is intended to run inside this Docker image, not on its own!
#
# === Script Arguments
#
# The script does not accept any parameters.


echo "Generate README.adoc from Antora docs"


pwd
ls -alF


echo "= $1" > README.adoc
{
cat docs/modules/ROOT/partials/README.adoc
echo
echo "// +-------------------------------------------+"
echo "// |                                           |"
echo "// |    DO NOT EDIT DIRECTLY !!!!!             |"
echo "// |                                           |"
echo "// |    File is auto-generated by pipeline.    |"
echo "// |    Contents are based on Antora docs.     |"
echo "// |                                           |"
echo "// +-------------------------------------------+"

} >> README.adoc

cat README.adoc
