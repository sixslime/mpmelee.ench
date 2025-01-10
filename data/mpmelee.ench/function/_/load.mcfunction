#>mpmelee.ench:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mpmelee.ench load-status 1

# settings
execute unless data storage mpmelee.ench:settings {PERSIST:true} run function mpmelee.ench:settings

#declare storage mpmelee.ench:var
#declare storage mpmelee.ench:in
#declare storage mpmelee.ench:out
#declare storage mpmelee.ench:data
#declare storage mpmelee.ench:hook
#declare storage mpmelee.ench:implement

# scoreboards
scoreboard objectives add -mpmelee.ench dummy
scoreboard objectives add --mpmelee.ench dummy
#scoreboard objectives add mpmelee.ench-scoreboard dummy

# registries
function mpmelee.ench:_/affect/define
function mpmelee.ench:_/purec/define

# tick
schedule clear mpmelee.ench:_/tick
function mpmelee.ench:_/tick