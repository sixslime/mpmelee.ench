#> mpweapons.ench:_/affect/fleetfoot/_impl/start_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier add mpweapons.ench:fleetfoot $(amount) $(operation)

data remove storage mpweapons.ench:var fleetfoot.attributes[-1]
execute if data storage mpweapons.ench:var fleetfoot.attributes[0] run function mpweapons.ench:_/affect/fleetfoot/_impl/start_attributes with storage mpweapons.ench:var fleetfoot.attributes[-1]