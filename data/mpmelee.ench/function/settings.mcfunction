#>mpmelee.ench:settings

#declare storage mpmelee.ench:settings
data modify storage mpmelee.ench:settings PERSIST set value false

#>-------------------
#> enchantment.crippling.duration
#: LevelBasedValue(int)
#-------------------
# ~ how many ticks the effects of the 'crippling' enchantment last.
#-------------------
data modify storage mpmelee.ench:settings enchantment.crippling.duration set value {base:30, per_additional_level:15}
#>-------------------

#>-------------------
#> enchantment.crippling.attributes[]
# AttributeEffect
#-------------------
# ~ the attributes modifiers that 'crippling' inflicts.
#-------------------
data modify storage mpmelee.ench:settings enchantment.crippling.attributes set value []
data modify storage mpmelee.ench:settings enchantment.crippling.attributes append value {attribute:"minecraft:movement_speed", amount:{base:-0.30,per_additional_level:-0.15}, operation:"add_multiplied_total"}
data modify storage mpmelee.ench:settings enchantment.crippling.attributes append value {attribute:"minecraft:jump_strength", amount:{base:-0.1,per_additional_level:-0.15}, operation:"add_multiplied_total"}
data modify storage mpmelee.ench:settings enchantment.crippling.attributes append value {attribute:"minecraft:player.entity_interaction_range", amount:{base:-0.2,per_additional_level:-0.1}, operation:"add_multiplied_total"}
#>-------------------

#>-------------------
#> enchantment.fleeting.duration
#: LevelBasedValue(int)
#-------------------
# ~ how many ticks the effects of the 'fleeting' enchantment last.
#-------------------
data modify storage mpmelee.ench:settings enchantment.fleeting.duration set value {base:25, per_additional_level:10}
#>-------------------

#>-------------------
#> enchantment.fleeting.attributes[]
#: AttributeEffect
#-------------------
# ~ the attributes modifiers that 'fleeting' inflicts.
#-------------------
# - 
#-------------------
data modify storage mpmelee.ench:settings enchantment.fleeting.attributes set value []
data modify storage mpmelee.ench:settings enchantment.fleeting.attributes append value {attribute:"minecraft:movement_speed", amount:{base:0.25,per_additional_level:0.1}, operation:"add_multiplied_total"}
#>-------------------
