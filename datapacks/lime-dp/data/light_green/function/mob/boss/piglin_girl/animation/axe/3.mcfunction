execute if score @s light_green.boss.animation matches 22..30 on target run tag @s add light_green.damage_locator
execute facing entity @n[tag=light_green.damage_locator] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 22 at @n[tag=light_green.damage_locator] run summon marker ~ ~ ~ {Tags:[light_green.damage_locator]}
execute if score @s light_green.boss.animation matches 20 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 20 run attribute @s movement_speed modifier add light_green:piglin_girl_attack 0.225 add_value
execute if score @s light_green.boss.animation matches 15 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 15 run attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
execute if score @s light_green.boss.animation matches 15 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.damage_locator] feet run function light_green:mob/boss/piglin_girl/animation/axe/down
execute if score @s light_green.boss.animation matches 22..30 as @n[tag=light_green.damage_locator,type=!#light_green:no_hp] run tag @s remove light_green.damage_locator

execute if score @s light_green.boss.animation matches 0 as @n[tag=light_green.damage_locator,type=!#light_green:no_hp] run tag @s remove light_green.damage_locator
execute if score @s light_green.boss.animation matches 0 run kill @n[tag=light_green.damage_locator,type=marker]
execute if score @s light_green.boss.animation matches 17 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1 0.5
execute if score @s light_green.boss.animation matches 16 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 15 rotated ~ 0 positioned ^ ^ ^1.5 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0 0.5 2 20 force
execute if score @s light_green.boss.animation matches 10 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/axe/jump_ready
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing