#! /bin/bash

set -eo pipefail

git clone --recursive http://repo.or.cz/lsnes.git /lsnes

cd /lsnes

patch -p1 < /work/tweaks.diff

make

rm -rf /work
