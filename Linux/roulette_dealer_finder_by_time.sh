#!/bin/bash
grep "$1:00:00 $2" *_Dealer_schedule | awk '{print $1, $2, $5, $6}'


