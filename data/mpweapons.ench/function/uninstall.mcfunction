#> mpweapons.ench:uninstall

scoreboard objectives remove -mpweapons.ench
scoreboard objectives remove --mpweapons.ench

data remove storage mpweapons.ench:settings enchantment
data remove storage mpweapons.ench:settings PERSIST

data remove storage purec:data pfunction.'mpweapons.ench:calc_attribute_effect'

data remove storage affect:data registry."mpweapons.ench:fleetfoot"
data remove storage affect:data registry."mpweapons.ench:cripple"
