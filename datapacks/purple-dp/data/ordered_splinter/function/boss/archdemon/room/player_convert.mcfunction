execute as @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] run execute store result score @s wool_purple.gametype run data get entity @s playerGameType
execute as @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] run gamemode adventure @s
execute as @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] run tag @s add wool_purple.in_boss_room
execute as a11-1-2-3-4 if entity @s[tag=wool_purple.end] run return fail
execute as @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] run stopsound @s record
execute as @a[dx=-19,dy=14,dz=-27,tag=!wool_purple.in_boss_room] at @s run playsound wool_purple:archdemon_battle record @s ~ ~ ~ 1 1
execute as @s[tag=!wool_purple.boss_battle] at a11-0-0-0-3 run function ordered_splinter:boss/archdemon/summon
execute as @s[tag=!wool_purple.boss_battle] run tag @s add wool_purple.boss_battle