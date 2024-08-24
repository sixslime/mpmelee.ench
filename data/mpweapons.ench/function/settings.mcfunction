#>mpweapons.ench:settings

#declare storage mpweapons.ench:settings
data modify storage mpweapons.ench:settings PERSIST set value false

## SNAPSHOT - perhaps give weapons custom enchantability via xtem with the new 'enchantable' item component.

#>-------------------
#> enchantment.crippling.duration : {amount: float, duration: int}
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings enchantment.crippling.duration set value {base:30, per_additional_level:15}
#>-------------------

#>-------------------
#> enchantment.crippling.attributes : {amount: float, duration: int}
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings enchantment.crippling.attributes set value []
data modify storage mpweapons.ench:settings enchantment.crippling.attributes append value {attribute:"minecraft:generic.movement_speed", amount:{base:-0.3,per_additional_level:-0.15}, operation:"add_multiplied_total"}
#>-------------------

#>-------------------
#> cache.enchantment_levels.up_to : int
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings cache.enchantment_levels.up_to set value 10
#>-------------------