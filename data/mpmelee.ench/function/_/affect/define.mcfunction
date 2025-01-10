#> mpmelee.ench:_/affect/define
#--------------------
# ./load
#--------------------

data modify storage affect:data registry."mpmelee.ench:cripple" set value {start: "function mpmelee.ench:_/affect/cripple/start", end: "function mpmelee.ench:_/affect/cripple/end", duplicate_protocol:"function mpmelee.ench:_/affect/cripple/protocol"}

data modify storage affect:data registry."mpmelee.ench:fleetfoot" set value {start: "function mpmelee.ench:_/affect/fleetfoot/start", end: "function mpmelee.ench:_/affect/fleetfoot/end", duplicate_protocol:"function mpmelee.ench:_/affect/fleetfoot/protocol"}