#!/bin/bash
grep -E "05:00:00|02:00:00|08:00:00|10:00:00" 0315_Dealer_schedule | awk -F" " '{print $1,$2,$5,$6}' 

