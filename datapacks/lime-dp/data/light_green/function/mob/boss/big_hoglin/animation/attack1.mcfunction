execute if score @s light_green.boss.animation matches 25 run playsound minecraft:item.crossbow.loading_middle hostile @a ~ ~ ~ 3 0

execute if score @s light_green.boss.animation matches 5 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 5 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 2.5 0.5 2.5 2 750 force
execute if score @s light_green.boss.animation matches 5 run tag @s add light_green.attacker
execute if score @s light_green.boss.animation matches 5 run item replace entity @s weapon.mainhand with iron_axe[attribute_modifiers=[{id:"light_green:big_hoglin_smallrush",type:attack_damage,amount:0,operation:"add_value"}],enchantments={efficiency:5}]
execute if score @s light_green.boss.animation matches 5 at @s positioned ~-7.5 ~-7.5 ~-7.5 as @e[dx=14,dy=14,dz=14,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score @s light_green.boss.animation matches 5 if score $hoglin_have_dirt light_green.main.math matches 1 run function light_green:mob/boss/big_hoglin/dirt_armor/clear
execute if score @s light_green.boss.animation matches 5 as @e[tag=light_green.target] run damage @s 5 mob_attack by @n[tag=light_green.boss.big_hoglin]
execute if score @s light_green.boss.animation matches 5 at @s rotated ~ -90 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon {rotate1:360,rotate2:30,power:0.2}
execute if score @s light_green.boss.animation matches 5 at @s rotated ~ -90 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon {rotate1:360,rotate2:30,power:0.2}
execute if score @s light_green.boss.animation matches 5 at @s rotated ~ -90 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon {rotate1:360,rotate2:30,power:0.2}
execute if score @s light_green.boss.animation matches 5 at @s rotated ~ -90 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon {rotate1:360,rotate2:30,power:0.2}
execute if score @s light_green.boss.animation matches 5 at @s rotated ~ -90 run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon {rotate1:360,rotate2:30,power:0.2}
execute if score @s light_green.boss.animation matches 5 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 5 run item replace entity @s weapon.mainhand with air
execute if score @s light_green.boss.animation matches 5 run tag @s remove light_green.attacker

execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/dirt_armor/apply
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:big_hoglin_attack
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/move/detect_attack