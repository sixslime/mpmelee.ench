#> mpmelee.ench:_/affect/cripple/start
#--------------------
# @affect:start : "mpmelee.ench:cripple"
#--------------------

data modify storage mpmelee.ench:var cripple.attributes set from storage affect:data this[-1].data.attributes

execute if data storage mpmelee.ench:var cripple.attributes[0] run function mpmelee.ench:_/affect/cripple/_impl/start_attributes with storage mpmelee.ench:var cripple.attributes[-1]

data remove storage mpmelee.ench:var cripple