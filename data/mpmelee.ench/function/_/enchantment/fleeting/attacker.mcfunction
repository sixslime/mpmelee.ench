#> mpmelee.ench:_/enchantment/fleeting/attacker
#--------------------
# @enchantment : fleeting
#--------------------

function mpmelee.ench:_/util/get_weapon
execute store result score *enchant.level -mpmelee.ench run data get storage mpmelee.ench:var get_weapon.result.components."minecraft:enchantments".levels."mpmelee.ench:fleeting"
data remove storage mpmelees.ench:var get_weapon

data merge storage purec:in {run:{pfunction:"mpmelee.ench:calc_attribute_effect"}}
data modify storage purec:in run.input set from storage mpmelee.ench:settings enchantment.fleeting
execute store result storage purec:in run.input.level int 1 run scoreboard players get *enchant.level -mpmelee.ench
function purec:api/run

data merge storage affect:in {give:{id:"mpmelee.ench:fleetfoot", selector:"@s"}}
data modify storage affect:in give.duration set from storage purec:out run.result.duration
data modify storage affect:in give.data.attributes set from storage purec:out run.result.attributes
function affect:api/give

scoreboard players reset *enchant.level -mpmelee.ench