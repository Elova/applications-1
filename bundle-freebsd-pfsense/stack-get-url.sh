#!/bin/bash

echo $1 $(heat resource-list $1 | grep admingw_internet_surface | tr -d " " | cut -d "|" -f3 | rev | cut -d "-" -f1 | rev)

