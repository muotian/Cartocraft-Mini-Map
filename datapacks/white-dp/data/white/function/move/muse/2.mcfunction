
execute unless entity @e[type=#white:hostile,distance=..10,limit=1] run return fail

scoreboard players reset @s white.move.muse.duration
scoreboard players set #range white.main 200
execute rotated ~ 0 anchored eyes positioned ^1 ^1 ^ facing entity @e[type=#white:hostile,distance=..15,sort=nearest,limit=1] eyes run function white:move/muse/laser/use

# fx
playsound white:muse_shoot master @a ~ ~ ~ 0.25 1