#> mpmelee.ench:_/affect/fleetfoot/_impl/end_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier remove mpmelee.ench:fleetfoot

data remove storage mpmelee.ench:var fleetfoot.attributes[-1]
execute if data storage mpmelee.ench:var fleetfoot.attributes[0] run function mpmelee.ench:_/affect/fleetfoot/_impl/end_attributes with storage mpmelee.ench:var fleetfoot.attributes[-1]