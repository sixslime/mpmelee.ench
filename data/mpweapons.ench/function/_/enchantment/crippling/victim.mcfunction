#> mpweapons.ench:_/enchantment/crippling/victim
#--------------------
# @enchantment : crippling
#--------------------

say crippled
execute store result score *cripple.amount -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.base.amount 1000
execute store result score *cripple.duration -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.base.duration

scoreboard players remove *enchant.level -mpweapons.ench 1

execute store result score *cripple.add -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.per_additional_level.amount 1000
scoreboard players operation *cripple.add -mpweapons.ench *= *enchant.level -mpweapons.ench
scoreboard players operation *cripple.amount -mpweapons.ench += *cripple.add -mpweapons.ench

execute store result score *cripple.add -mpweapons.ench run data get storage mpweapons.ench:settings enchantment.crippling.per_additional_level.duration
scoreboard players operation *cripple.add -mpweapons.ench *= *enchant.level -mpweapons.ench
scoreboard players operation *cripple.duration -mpweapons.ench += *cripple.add -mpweapons.ench

execute store result storage mpweapons.ench:var cripple.with.amount float 0.001 run scoreboard players get *cripple.duration -mpweapons.ench
function mpweapons.ench:_/enchantment/crippling/victim.1 with storage mpweapons.ench:var cripple.with

data merge storage later:in {delay:{command:"function mpweapons.ench:_/enchantment/crippling/end"}}
execute store result storage later:in delay.ticks int 1 run scoreboard players get *cripple.duration -mpweapons.ench
function later:api/delay
execute if entity @s[type=player] run function later.prt:api/enable


scoreboard players reset *enchant.level -mpweapons.ench
scoreboard players reset *cripple.duration -mpweapons.ench
data remove storage mpweapons.ench:var cripple