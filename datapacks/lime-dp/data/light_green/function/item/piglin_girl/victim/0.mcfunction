execute on attacker store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
execute on attacker run tag @s add light_green.piglin_weapon.taker
execute as @n[tag=light_green.piglin_weapon.taker] if items entity @s weapon.mainhand *[custom_data~{light_green.golden_axe:1}] run scoreboard players set $piglin_weapon.type light_green.main.math 1
execute as @n[tag=light_green.piglin_weapon.taker] if items entity @s weapon.mainhand *[custom_data~{light_green.golden_dagger:1}] run scoreboard players set $piglin_weapon.type light_green.main.math 2
execute as @n[tag=light_green.piglin_weapon.taker] if items entity @s weapon.mainhand *[custom_data~{light_green.golden_spear:1}] run scoreboard players set $piglin_weapon.type light_green.main.math 3

execute if score $piglin_weapon.type light_green.main.math matches 2 on attacker run scoreboard players add @s light_green.dagger_hit 1
execute if score $piglin_weapon.type light_green.main.math matches 2 on attacker if score @s light_green.dagger_hit matches 3.. unless score @s light_green.piglin_girl_weapon.use matches 40.. run scoreboard players add @s light_green.piglin_girl_weapon.use 1
execute if score $piglin_weapon.type light_green.main.math matches 2 on attacker if score @s light_green.dagger_hit matches 3.. run scoreboard players remove @s light_green.dagger_hit 3

execute if score $piglin_weapon.type light_green.main.math matches 3 at @s if entity @p[tag=light_green.piglin_weapon.taker,distance=3..] on attacker unless score @s light_green.piglin_girl_weapon.use matches 40.. run scoreboard players add @s light_green.piglin_girl_weapon.use 1
execute on attacker run tag @s remove light_green.piglin_weapon.taker

execute on attacker run scoreboard players add @s light_green.piglin_girl_weapon.hit 1
execute on attacker if score @s light_green.piglin_girl_weapon.hit matches 5.. run scoreboard players set @s light_green.heal 2
execute on attacker if score @s light_green.piglin_girl_weapon.hit matches 5.. run scoreboard players remove @s light_green.piglin_girl_weapon.hit 5

function light_green:item/piglin_girl/victim/last_victim with storage light_green:player

execute if score $piglin_weapon.type light_green.main.math matches 2 run function light_green:item/piglin_girl/victim/dagger with storage light_green:player