#>mpweapons.ench:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mpweapons.ench load-status 1

# settings
execute unless data storage mpweapons.ench:settings {PERSIST:true} run function mpweapons.ench:settings

#declare storage mpweapons.ench:var
#declare storage mpweapons.ench:in
#declare storage mpweapons.ench:out
#declare storage mpweapons.ench:data
#declare storage mpweapons.ench:hook
#declare storage mpweapons.ench:implement

# scoreboards
scoreboard objectives add -mpweapons.ench dummy
scoreboard objectives add --mpweapons.ench dummy
#scoreboard objectives add mpweapons.ench-scoreboard dummy

# tick
schedule clear mpweapons.ench:_/tick
function mpweapons.ench:_/tick