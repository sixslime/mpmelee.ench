#> mpweapons.ench:_/purec/pfunction/calc_attribute_effect/run
#--------------------
# @purec:pfunction : "mpweapons.ench:calc_attribute_effect"
#--------------------

# INPUT
# duration: {base:int, per_additional_level:int}
# attributes: AttributeSpec
# level: int

# RESULT
# duration: int
# attributes: FixedAttributeSpec

data modify storage mpweapons.ench:var calc.input set from storage purec:data this[-1].input

execute store result score *calc.level_add -mpweapons.ench run data get storage mpweapons.ench:var calc.input.level
scoreboard players remove *calc.level_add -mpweapons.ench 1

execute store result score *calc.base -mpweapons.ench run data get storage mpweapons.ench:var calc.input.duration.base
execute store result score *calc.per -mpweapons.ench run data get storage mpweapons.ench:var calc.input.duration.per_additional_level
scoreboard players operation *calc.per -mpweapons.ench *= *calc.level_add -mpweapons.ench
scoreboard players operation *calc.base -mpweapons.ench += *calc.per -mpweapons.ench
execute store result storage purec:data this[-1].result.duration int 1 run scoreboard players get *calc.base -mpweapons.ench

execute if data storage mpweapons.ench:var calc.input.attributes[0] run function mpweapons.ench:_/purec/pfunction/calc_attribute_effect/each_attribute

scoreboard players reset *calc.level_add -mpweapons.ench
scoreboard players reset *calc.base -mpweapons.ench
scoreboard players reset *calc.per -mpweapons.ench
data remove storage mpweapons.ench:var calc