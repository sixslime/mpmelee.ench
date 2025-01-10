#> mpmelee.ench:_/enchantment/crippling/victim
#--------------------
# @enchantment : crippling
#--------------------

data merge storage purec:in {run:{pfunction:"mpmelee.ench:calc_attribute_effect"}}
data modify storage purec:in run.input set from storage mpmelee.ench:settings enchantment.crippling
execute store result storage purec:in run.input.level int 1 run scoreboard players get *enchant.level -mpmelee.ench
function purec:api/run

data merge storage affect:in {give:{id:"mpmelee.ench:cripple", selector:"@s"}}
data modify storage affect:in give.duration set from storage purec:out run.result.duration
data modify storage affect:in give.data.attributes set from storage purec:out run.result.attributes
function affect:api/give

scoreboard players reset *enchant.level -mpmelee.ench