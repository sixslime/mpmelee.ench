#> mpmelee.ench:_/affect/cripple/_impl/end_attributes
#--------------------
# ../start
#--------------------

$attribute @s $(attribute) modifier remove mpmelee.ench:cripple

data remove storage mpmelee.ench:var cripple.attributes[-1]
execute if data storage mpmelee.ench:var cripple.attributes[0] run function mpmelee.ench:_/affect/cripple/_impl/end_attributes with storage mpmelee.ench:var cripple.attributes[-1]