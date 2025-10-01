#!/bin/bash
# Use this script to create monthly reports for awstats.
# Only necessary if you don't have (or use) cgi.
# Rik D.T. Janssen, October 1, 2025.

CONFIG="ricgraph"
YEAR=2025
OUTPUT_DIR="/home/rjanssen/test"

echo "You might need to run this script as root."

for MONTH in $(seq -w 1 12); do
  echo "Generating report for $YEAR-$MONTH..."
  BUILD_DATE="${YEAR}-${MONTH}"
  perl "/usr/share/awstats/tools/awstats_buildstaticpages.pl" -config="$CONFIG" -update -month="$MONTH" -year="$YEAR" -awstatsprog="/usr/lib/cgi-bin/awstats.pl" -dir="$OUTPUT_DIR" -builddate="$BUILD_DATE"
done

#echo "If you want to access the files locally, don't forget to do"
#echo "chown rjanssen:rjanssen ${OUTPUT_DIR}"

chown rjanssen:rjanssen ${OUTPUT_DIR}/*

echo "All monthly reports generated."
