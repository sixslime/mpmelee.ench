#> mpweapons.ench:_/affect/fleetfoot/start
#--------------------
# @affect:start : "mpweapons.ench:fleetfoot"
#--------------------

data modify storage mpweapons.ench:var fleetfoot.attributes set from storage affect:data this[-1].data.attributes

execute if data storage mpweapons.ench:var fleetfoot.attributes[0] run function mpweapons.ench:_/affect/fleetfoot/_impl/start_attributes with storage mpweapons.ench:var fleetfoot.attributes[-1]

data remove storage mpweapons.ench:var fleetfoot