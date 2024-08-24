#> mpweapons.ench:_/enchantment/crippling/victim
#--------------------
# @enchantment : crippling
#--------------------

data merge storage purec:in {run:{pfunction:"mpweapons.ench:calc_attribute_effect"}}
data modify storage purec:in run.input set from storage mpweapons.ench:settings enchantment.crippling
function purec:api/run

data merge storage affect:in {give:{id:"mpweapons.ench:cripple", selector:"@s"}}
data modify storage affect:in give.data set from storage purec:out run.result
function affect:api/give
