#> mpweapons.ench:_/affect/fleetfoot/_impl/end_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier remove mpweapons.ench:fleetfoot

data remove storage mpweapons.ench:var fleetfoot.attributes[-1]
execute if data storage mpweapons.ench:var fleetfoot.attributes[0] run function mpweapons.ench:_/affect/fleetfoot/_impl/end_attributes with storage mpweapons.ench:var fleetfoot.attributes[-1]