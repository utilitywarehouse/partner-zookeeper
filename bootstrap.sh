#! /bin/bash

mkdir -p opt && mkdir -p work-dir
cp -rf /partner/opt/* /opt
cp -rf /partner/work-dir/* /work-dir
echo "Copied files."

/work-dir/peer-finder -on-start=/work-dir/on-start.sh -service=zookeeper
