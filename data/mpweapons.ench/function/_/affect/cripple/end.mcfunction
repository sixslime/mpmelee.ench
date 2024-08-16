#> mpweapons.ench:_/affect/cripple/end
#--------------------
# @affect:end : "cripple"
#--------------------

say cripple end
#>---- D E B U G --------
data modify storage loggr:in log.message set from storage affect:data current.data
function loggr:api/log
#>--------------
