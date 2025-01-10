#> mpmelee.ench:_/purec/pfunction/calc_attribute_effect/run
#--------------------
# @purec:pfunction : "mpmelee.ench:calc_attribute_effect"
#--------------------

# INPUT
# duration: {base:int, per_additional_level:int}
# attributes: AttributeSpec
# level: int

# RESULT
# duration: int
# attributes: FixedAttributeSpec

data modify storage mpmelee.ench:var calc.input set from storage purec:data this[-1].input

execute store result score *calc.level_add -mpmelee.ench run data get storage mpmelee.ench:var calc.input.level
scoreboard players remove *calc.level_add -mpmelee.ench 1

execute store result score *calc.base -mpmelee.ench run data get storage mpmelee.ench:var calc.input.duration.base
execute store result score *calc.per -mpmelee.ench run data get storage mpmelee.ench:var calc.input.duration.per_additional_level
scoreboard players operation *calc.per -mpmelee.ench *= *calc.level_add -mpmelee.ench
scoreboard players operation *calc.base -mpmelee.ench += *calc.per -mpmelee.ench
execute store result storage mpmelee.ench:var calc.result.duration int 1 run scoreboard players get *calc.base -mpmelee.ench

execute if data storage mpmelee.ench:var calc.input.attributes[0] run function mpmelee.ench:_/purec/pfunction/calc_attribute_effect/each_attribute

data modify storage purec:data this[-1].result set from storage mpmelee.ench:var calc.result

scoreboard players reset *calc.level_add -mpmelee.ench
scoreboard players reset *calc.base -mpmelee.ench
scoreboard players reset *calc.per -mpmelee.ench
data remove storage mpmelee.ench:var calc
