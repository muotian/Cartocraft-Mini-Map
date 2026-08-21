advancement revoke @s only mini_light:area_skill/use_2
scoreboard players set @s mini_light.use_goat_horn 0

playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1

execute anchored eyes run summon marker ^ ^ ^2 {Tags:["mini_light.area_skill_cave","new"]}
execute rotated as @s run rotate @n[tag=mini_light.area_skill_cave, tag=new, type=marker] ~ ~
tag @e[tag=new] remove new