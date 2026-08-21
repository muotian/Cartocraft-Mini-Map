
summon item ~ ~ ~ {Tags:[white.temp],Item:{id:barrier,components:{item_model:"air"}},PickupDelay:0s,Invulnerable:1b,Glowing:1b}

$item replace entity @e[tag=white.temp,type=item,distance=..0.1,limit=1] contents from entity @s $(slot)
execute as @e[tag=white.temp,type=item,distance=..0.1,limit=1] at @s facing entity @p feet rotated ~ -45 run function white:sys/motion {s:0.4}

tag @e[tag=white.temp,type=item,distance=..0.1,limit=1] remove white.temp