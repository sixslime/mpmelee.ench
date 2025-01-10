#> mpmelee.ench:_/purec/pfunction/calc_attribute_effect/each_attribute
#--------------------
# ./run
#--------------------

data modify storage mpmelee.ench:var calc.this_attribute set from storage mpmelee.ench:var calc.input.attributes[-1]

execute store result score *calc.base -mpmelee.ench run data get storage mpmelee.ench:var calc.this_attribute.amount.base 10000
execute store result score *calc.per -mpmelee.ench run data get storage mpmelee.ench:var calc.this_attribute.amount.per_additional_level 10000
scoreboard players operation *calc.per -mpmelee.ench *= *calc.level_add -mpmelee.ench
scoreboard players operation *calc.base -mpmelee.ench += *calc.per -mpmelee.ench

data remove storage mpmelee.ench:var calc.this_attribute.amount
execute store result storage mpmelee.ench:var calc.this_attribute.amount float 0.0001 run scoreboard players get *calc.base -mpmelee.ench

data modify storage mpmelee.ench:var calc.result.attributes append from storage mpmelee.ench:var calc.this_attribute

data remove storage mpmelee.ench:var calc.input.attributes[-1]
execute if data storage mpmelee.ench:var calc.input.attributes[0] run function mpmelee.ench:_/purec/pfunction/calc_attribute_effect/each_attribute
