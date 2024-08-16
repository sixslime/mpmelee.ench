#> mpweapons.ench:_/enchantment/crippling/victim
#--------------------
# @enchantment : crippling
#--------------------

execute store result score *cripple.amount -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.base.amount 1000
execute store result score *cripple.duration -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.base.duration

scoreboard players remove *enchant.level -mpweapons.ench 1

execute store result score *cripple.add -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.per_additional_level.amount 1000
scoreboard players operation *cripple.add -mpweapons.ench *= *enchant.level -mpweapons.ench
scoreboard players operation *cripple.amount -mpweapons.ench += *cripple.add -mpweapons.ench

execute store result score *cripple.add -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.per_additional_level.duration
scoreboard players operation *cripple.add -mpweapons.ench *= *enchant.level -mpweapons.ench
scoreboard players operation *cripple.duration -mpweapons.ench += *cripple.add -mpweapons.ench

data merge storage affect:in {give:{id:"mpweapons.ench:cripple", selector:"@s"}}
execute store result storage affect:in give.data.amount float 0.001 run scoreboard players get *cripple.amount -mpweapons.ench
execute store result storage affect:in give.duration int 1 run scoreboard players get *cripple.duration -mpweapons.ench
function affect:api/give


scoreboard players reset *enchant.level -mpweapons.ench
scoreboard players reset *cripple.duration -mpweapons.ench
scoreboard players reset *cripple.amount -mpweapons.ench
data remove storage mpweapons.ench:var cripple