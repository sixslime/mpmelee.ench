#>mpweapons.enchlite:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mpweapons.enchlite load-status 1

# settings
execute unless data storage mpweapons.enchlite:settings {PERSIST:true} run function mpweapons.enchlite:settings

#declare storage mpweapons.enchlite:var
#declare storage mpweapons.enchlite:in
#declare storage mpweapons.enchlite:out
#declare storage mpweapons.enchlite:data
#declare storage mpweapons.enchlite:hook
#declare storage mpweapons.enchlite:implement

# scoreboards
scoreboard objectives add -mpweapons.enchlite dummy
scoreboard objectives add --mpweapons.enchlite dummy
#scoreboard objectives add mpweapons.enchlite-scoreboard dummy

# tick
schedule clear mpweapons.enchlite:_/tick
function mpweapons.enchlite:_/tick