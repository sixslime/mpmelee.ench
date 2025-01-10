#> mpmelee.ench:_/affect/cripple/_impl/start_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier add mpmelee.ench:cripple $(amount) $(operation)

data remove storage mpmelee.ench:var cripple.attributes[-1]
execute if data storage mpmelee.ench:var cripple.attributes[0] run function mpmelee.ench:_/affect/cripple/_impl/start_attributes with storage mpmelee.ench:var cripple.attributes[-1]