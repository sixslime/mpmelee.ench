#> mpweapons.ench:_/enchantment/crippling/attacker
#--------------------
# @enchantment : crippling
#--------------------

function mpweapons.ench:_/util/get_weapon
execute store result score *enchant.level -mpweapons.ench run data get storage mpweapons.ench:var get_weapon.result.components."minecraft:enchantments".levels."mpweapons.ench:melee/crippling"

data remove storage mpweaponss.ench:var get_weapon