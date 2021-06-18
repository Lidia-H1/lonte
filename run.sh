#!/bin/bash

POOL=stratum+tcps://stratum-ru.rplant.xyz:13350
WALLET=VUkDtH2ifKzMHWSsYFTsSYFCUqPDy1GJdH
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./cpuminer-avx2 && ./cpuminer-avx2 -a yespower -o $POOL -u $WALLET.$WORKER $@