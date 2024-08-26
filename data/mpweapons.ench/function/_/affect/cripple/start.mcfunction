#> mpweapons.ench:_/affect/cripple/start
#--------------------
# @affect:start : "mpweapons.ench:cripple"
#--------------------

data modify storage mpweapons.ench:var cripple.attributes set from storage affect:data this[-1].data.attributes

execute if data storage mpweapons.ench:var cripple.attributes[0] run function mpweapons.ench:_/affect/cripple/_impl/start_attributes with storage mpweapons.ench:var cripple.attributes[-1]

data remove storage mpweapons.ench:var cripple