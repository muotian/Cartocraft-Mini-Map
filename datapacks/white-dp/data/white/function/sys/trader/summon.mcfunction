
execute as @e[tag=white.sys.trader,tag=!white.sys.trader.updated,type=villager,distance=..16] at @s run function white:sys/trader/data
advancement revoke @s only white:player/trader_egg