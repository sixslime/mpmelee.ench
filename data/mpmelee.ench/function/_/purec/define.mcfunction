#> mpmelee.ench:_/purec/define
#--------------------
# _/load
#--------------------

data remove storage purec:data cache.'mpmelee.ench:calc_attribute_effect'

data modify storage purec:data pfunction.'mpmelee.ench:calc_attribute_effect' set value "function mpmelee.ench:_/purec/pfunction/calc_attribute_effect/run with storage purec:data this[-1].input"