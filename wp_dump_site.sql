#!/bin/bash
#
# Create a SQL dump of a single site in a wordpress multi user install
. settings
echo "show tables like '${PREFIX}\_$1\_%'" | mysql -N $DB | xargs mysqldump $DB 
