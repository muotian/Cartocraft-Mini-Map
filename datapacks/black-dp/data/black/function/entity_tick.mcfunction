#by JaCkY99
#black

execute as @e[type=slime,tag=black.stone_slime_s] at @s if entity @a[distance=..2] run kill @s
execute as @e[type=zombie,tag=black.stone_warrior,tag=black.core] at @s run function black:mob/stone_warrior/tick

#slime_kill
execute as @e[type=slime,tag=black.hitbox] at @s store result score @s black.y run data get entity @s Pos[1]
execute as @e[type=slime,tag=black.hitbox] at @s if score @s black.y matches ..-99 run kill @s
execute as @e[type=slime,tag=black.hitbox_f] at @s store result score @s black.y run data get entity @s Pos[1]
execute as @e[type=slime,tag=black.hitbox_f] at @s if score @s black.y matches ..-99 run kill @s
execute as @e[type=slime,tag=black.hitbox_b] at @s store result score @s black.y run data get entity @s Pos[1]
execute as @e[type=slime,tag=black.hitbox_b] at @s if score @s black.y matches ..-99 run kill @s

#proj
execute as @e[type=marker,tag=black.proj.blade] at @s run function black:skill/blade/loop