schedule function black:bossfight/boss1/death 1t
execute unless entity @a[gamemode=!spectator] run function black:bossfight/boss1/failed
execute as @a[scores={icebird.DeathInBoss=1}] run function black:bossfight/boss1/died
execute as @a[scores={icebird.DeathInBoss=1..}] at @s run function black:bossfight/boss1/died2