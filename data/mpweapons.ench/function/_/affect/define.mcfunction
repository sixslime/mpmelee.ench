#> mpweapons.ench:_/affect/define
#--------------------
# ./load
#--------------------

data modify storage affect:data registry."mpweapons.ench:cripple" set value {start: "function mpweapons.ench:_/affect/cripple/start", end: "function mpweapons.ench:_/affect/cripple/end", duplicate_protocol:"function mpweapons.ench:_/affect/cripple/protocol"}