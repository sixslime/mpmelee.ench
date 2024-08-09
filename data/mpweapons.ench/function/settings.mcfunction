#>mpweapons.ench:settings

#declare storage mpweapons.ench:settings
data modify storage mpweapons.ench:settings PERSIST set value false

#>-------------------
#> enchantment.crippling.base : {amount: float, duration: int}
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings enchantments.crippling.base set value {amount: -0.3, duration: 40}
#>-------------------

#>-------------------
#> enchantment.crippling.per_additional_level : {amount: float, duration: int}
#-------------------
# ~ 
#-------------------
# - 
#-------------------
data modify storage mpweapons.ench:settings enchantments.crippling.per_additional_level set value {amount: -0.10, duration: 10}
#>-------------------