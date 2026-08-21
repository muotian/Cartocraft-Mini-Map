
## reset
kill @e[tag=white.sys.trader,type=villager]
fill ~ ~ ~ ~ ~1 ~ air replace

## summon
summon villager ~ ~-0.5 ~ {Tags: [white.sys.trader]}
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=white.sys.trader,type=villager,dx=0,dy=0,dz=0,limit=1] at @s run function white:sys/trader/data