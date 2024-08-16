#>mpweapons.ench:settings

#declare storage mpweapons.ench:settings
data modify storage mpweapons.ench:settings PERSIST set value false

## SNAPSHOT - perhaps give weapons custom enchantability via xtem with the new 'enchantable' item component.

#>-------------------
#> enchantment.crippling.base : {amount: float, duration: int}
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings enchantment.crippling.base set value {amount: -0.3, duration: 40}
#>-------------------

#>-------------------
#> enchantment.crippling.per_additional_level : {amount: float, duration: int}
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings enchantment.crippling.per_additional_level set value {amount: -0.15, duration: 5}
#>-------------------