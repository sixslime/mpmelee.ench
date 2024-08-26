#> mpweapons.ench:_/affect/fleetfoot/end
#--------------------
# @affect:end : "fleetfoot"
#--------------------

data modify storage mpweapons.ench:var fleetfoot.attributes set from storage affect:data this[-1].data.attributes

execute if data storage mpweapons.ench:var fleetfoot.attributes[0] run function mpweapons.ench:_/affect/fleetfoot/_impl/end_attributes with storage mpweapons.ench:var fleetfoot.attributes[-1]

data remove storage mpweapons.ench:var fleetfoot