particle block{block_state:"stone"} ~ ~ ~ .7 .7 .7 0 50
particle block{block_state:"deepslate"} ~ ~ ~ .7 .7 .7 0 50
particle minecraft:explosion ~ ~ ~ 1 1 1 1 3

playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 2 0
playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 2 0
playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1


tag @e[dx=0,dy=0,dz=0,tag=mini_light.fall_stone_target] add this

damage @n[tag=this,tag=mini_light.fall_stone_target] 8 arrow by @p
effect clear @n[tag=this,tag=mini_light.fall_stone_target] slowness
effect give @n[tag=this,tag=mini_light.fall_stone_target] slowness 4 1 false



tag @e[tag=this] remove this
tag @e[tag=mini_light.fall_stone_target] remove mini_light.fall_stone_target


function mini_light:area_skill/2/kill

#

