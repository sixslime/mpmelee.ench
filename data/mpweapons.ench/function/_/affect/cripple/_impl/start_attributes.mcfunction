#> mpweapons.ench:_/affect/cripple/_impl/start_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier add mpweapons.ench:cripple $(amount) $(operation)

data remove storage mpweapons.ench:var cripple.attributes[-1]
execute if data storage mpweapons.ench:var cripple.attributes[0] run function mpweapons.ench:_/affect/cripple/_impl/start_attributes with storage mpweapons.ench:var cripple.attributes[-1]