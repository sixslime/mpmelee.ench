#> mpweapons.ench:_/enchantment/crippling/attacker
#--------------------
# @enchantment : crippling
#--------------------

function mpweapons.ench:_/util/get_weapon
execute store result score *enchant.level -mpweapons.ench run data get storage mpweapons.ench:var get_weapon.result.components."minecraft:enchantments".levels."mpweapons.ench:melee/fleeting"
data remove storage mpweaponss.ench:var get_weapon

data merge storage purec:in {run:{pfunction:"mpweapons.ench:calc_attribute_effect"}}
data modify storage purec:in run.input set from storage mpweapons.ench:settings enchantment.fleeting
execute store result storage purec:in run.input.level int 1 run scoreboard players get *enchant.level -mpweapons.ench
function purec:api/run

data merge storage affect:in {give:{id:"mpweapons.ench:fleetfoot", selector:"@s"}}
data modify storage affect:in give.duration set from storage purec:out run.result.duration
data modify storage affect:in give.data.attributes set from storage purec:out run.result.attributes
function affect:api/give

scoreboard players reset *enchant.level -mpweapons.ench