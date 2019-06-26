#!/usr/bin/env bash

mkdir fips10c
pushd fips10c
wget http://efele.net/maps/fips-10/map/fips10c.zip
unzip -f fips10c.zip
popd

mkdir tz_world
pushd tz_world
wget http://efele.net/maps/tz/world/tz_world.zip
unzip -f tz_world.zip
mv world/* ./
popd

mkdir cities
pushd cities
echo Skipping city data as link is no longer good...
#wget http://legacy.jefferson.kctcs.edu/techcenter/gis%20data/World/Zip/cities.zip
#unzip -f cities.zip
popd

mkdir output
pushd output
unzip -f ../map.zip
popd
