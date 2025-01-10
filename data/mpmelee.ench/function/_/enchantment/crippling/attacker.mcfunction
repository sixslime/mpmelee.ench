#> mpmelee.ench:_/enchantment/crippling/attacker
#--------------------
# @enchantment : crippling
#--------------------

function mpmelee.ench:_/util/get_weapon
execute store result score *enchant.level -mpmelee.ench run data get storage mpmelee.ench:var get_weapon.result.components."minecraft:enchantments".levels."mpmelee.ench:crippling"
data remove storage mpmelees.ench:var get_weapon