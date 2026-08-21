advancement revoke @s only mini_light:accessories/anger_hurt
advancement revoke @s only mini_light:accessories/anger_kill

tag @s add this
execute as @e at @s on attacker if entity @s[tag=this] run function mini_light:item/accessory/anger_particle
tag @s remove this

attribute @s attack_damage modifier remove mini_light_anger

scoreboard players set @s mini_light.anger_necklace_cd 400

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 12 1
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 10 0.5