#by JaCkY99
#black

execute if entity @s[gamemode=!spectator] if score @s black.rc matches 1.. run function black:rc

execute if items entity @s weapon.mainhand diamond_sword[minecraft:custom_data~{black:{mheart:1b}}] run function black:item/mheart/mheart_tick
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{black:{machine_gun:1b}}] run function black:item/machine_gun/hold
execute if items entity @s weapon.offhand carrot_on_a_stick[minecraft:custom_data~{black:{machine_gun:1b}}] run function black:item/machine_gun/reload
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{black:{dark_angel:1b}}] run function black:item/dark_angel/hold
execute if items entity @s weapon.offhand carrot_on_a_stick[minecraft:custom_data~{black:{dark_angel:1b}}] run function black:item/dark_angel/reload

execute if items entity @s weapon.offhand poisonous_potato[minecraft:custom_data~{black:{lock:1b}}] run function black:item/lock
execute if entity @s[tag=black.hold_lock] unless items entity @s weapon.offhand poisonous_potato[minecraft:custom_data~{black:{lock:1b}}] run tag @s remove black.hold_lock
execute if items entity @s weapon.offhand poisonous_potato[minecraft:custom_data~{black:{key:1b}}] run function black:item/key
execute if entity @s[tag=black.hold_key] unless items entity @s weapon.offhand poisonous_potato[minecraft:custom_data~{black:{key:1b}}] run tag @s remove black.hold_key

execute if score @s black.machine_gun_cd matches 1.. run scoreboard players remove @s black.machine_gun_cd 1
execute if score @s black.dark_angel_cd matches 1.. run scoreboard players remove @s black.dark_angel_cd 1

scoreboard players reset @s black.rc
scoreboard players reset @s black.sneak

execute unless score @s black.core_attack_cd = @s black.core_attack_cd run scoreboard players set @s black.core_attack_cd 0
scoreboard players remove @s[scores={black.core_attack_cd=1..}] black.core_attack_cd 1
execute as @s[scores={black.core_attack_cd=1}] at @s run function black:item/core/attack/recover
execute as @s[tag=black.core_cd] run function black:item/core/tick
execute as @s[tag=black.real] at @s run function black:item/core/real_particle
execute as @s[tag=black.fake] at @s run function black:item/core/fake_particle
execute as @s if items entity @s weapon.offhand *[custom_data~{black_fake:1b}] run tag @s add black.fake
execute as @s if items entity @s weapon.offhand *[custom_data~{black_real:1b}] run tag @s add black.real
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_fall_flying": true}}} if items entity @s armor.chest elytra run function black:item/elytra/tick
