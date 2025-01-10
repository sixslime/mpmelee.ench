#> mpmelee.ench:uninstall

scoreboard objectives remove -mpmelee.ench
scoreboard objectives remove --mpmelee.ench

data remove storage mpmelee.ench:settings enchantment
data remove storage mpmelee.ench:settings PERSIST

data remove storage purec:data pfunction.'mpmelee.ench:calc_attribute_effect'

data remove storage affect:data registry."mpmelee.ench:fleetfoot"
data remove storage affect:data registry."mpmelee.ench:cripple"
