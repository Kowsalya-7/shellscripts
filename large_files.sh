#!/bin/bash

DIR=${1:-.}

find "$DIR" -type f -size +100M -exec ls -lhS {} + > large_files_report.txt

echo "Report saved to large_files_report.txt"
