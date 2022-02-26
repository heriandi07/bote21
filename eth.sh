#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=stratum+tcp://eth-us.f2pool.com:6688
WALLET=0x23dd47f22240551895b02196973f348714883e33.lolbote21

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool ssl://eth-us-east.flexpool.io:5555 $pool2 ssl://eth-hke.flexpool.io:5555 --user 0x3b4bF032b514ABC3734149f20Cc1EB3b00EEBeCf.RIG32
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
