#
effect clear @s invisibility
effect clear @s resistance
effect clear @s slowness

scoreboard players set $cd pink.monster.death.skill 30
scoreboard players set $s pink.monster.death.skill 2
scoreboard players reset $charge pink.monster.death.skill
scoreboard players set $dash pink.monster.death.skill 4

#
playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 0.7 1
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.4 0.8
playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 0.6 1
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.4 2

# dash
tag @s add this_m
execute as @e[tag=math_marker] at @s positioned as @n[tag=this_m] facing entity @p eyes rotated ~ 0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2

data modify entity @s Motion set from entity @n[tag=math_marker] Pos

tag @s remove this_m

#
particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 2

item replace entity @s armor.chest with netherite_chestplate[trim={pattern:silence,material:netherite},enchantment_glint_override=true]

