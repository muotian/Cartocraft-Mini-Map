# 執行者、執行位置是玩家
advancement revoke @s only mini_light:area_skill/use_1
scoreboard players set @s mini_light.use_goat_horn 0

playsound minecraft:entity.splash_potion.throw master @a ~ ~ ~ 1 .5
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1

effect clear @s poison

execute anchored eyes run summon marker ^ ^ ^2 {Tags:["mini_light.area_skill_forest","new"]}
execute rotated as @s run rotate @n[tag=mini_light.area_skill_forest, tag=new, type=marker] ~ ~
tag @e[tag=new] remove new