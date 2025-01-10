#> mpmelee.ench:_/affect/fleetfoot/_impl/start_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier add mpmelee.ench:fleetfoot $(amount) $(operation)

data remove storage mpmelee.ench:var fleetfoot.attributes[-1]
execute if data storage mpmelee.ench:var fleetfoot.attributes[0] run function mpmelee.ench:_/affect/fleetfoot/_impl/start_attributes with storage mpmelee.ench:var fleetfoot.attributes[-1]