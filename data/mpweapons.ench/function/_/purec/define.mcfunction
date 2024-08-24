#> mpweapons.ench:_/purec/define
#--------------------
# _/load
#--------------------

data modify storage purec:data pfunction."mpweapons.ench:calc_attribute_effect" set value "function mpweapons.ench:_/purec/pfunction/calc_attribute_effect/run with storage purec:data this[-1].input"