#!/bin/sh
ver="0.13.2.1"
cname="GoldBar"
cname1="Goldbar"
cname2="goldbar"
cshort="GBAR"

sudo apt-get install build-essential libtool autotools-dev autoconf pkg-config libssl-dev
sudo apt-get install libboost-all-dev
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libminiupnpc-dev 

sudo apt-get install libdb4.8-dev
sudo apt-get install libdb4.8++-dev
sudo apt-get install libboost1.37-dev

wget https://github.com/litecoin-project/litecoin/archive/v$ver.zip
sudo apt-get install unzip

unzip v$ver.zip
rm v$ver.zip
mv litecoin-$ver $cname

cd $cname
find ./ -type f -readable -writable -exec sed -i "s/Litecoin/$cname1/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/LiteCoin/$cname/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/LTC/$cshort/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/litecoin/$cname2/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/litecoind/$cname2d/g" {} \;

echo "Pleas change main.cpp in src"
