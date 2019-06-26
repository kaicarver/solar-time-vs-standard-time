#!/usr/bin/env bash

mkdir fips10c
pushd fips10c
wget -N http://efele.net/maps/fips-10/map/fips10c.zip
unzip -u fips10c.zip
popd

mkdir tz_world
pushd tz_world
wget -N http://efele.net/maps/tz/world/tz_world.zip
unzip -u tz_world.zip
mv world/* ./
popd

mkdir cities
pushd cities
wget -N https://opendata.arcgis.com/datasets/6996f03a1b364dbab4008d99380370ed_0.zip
unzip -u *.zip
popd

mkdir output
pushd output
unzip -u ../map.zip
popd
