#> mpweapons.ench:_/affect/cripple/_impl/end_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier remove mpweapons.ench:cripple

$say removed $(attribute) $(amount) $(operation)

data remove storage mpweapons.ench:var cripple.attributes[-1]
execute if data storage mpweapons.ench:var cripple.attributes[0] run function mpweapons.ench:_/affect/cripple/_impl/end_attributes with storage mpweapons.ench:var cripple.attributes[-1]