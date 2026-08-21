execute on attacker store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id

execute on attacker run scoreboard players add @s light_green.piglin_girl_weapon.hit 1
execute on attacker if score @s light_green.piglin_girl_weapon.hit matches 5.. run scoreboard players set @s light_green.heal 2
execute on attacker if score @s light_green.piglin_girl_weapon.hit matches 5.. run scoreboard players remove @s light_green.piglin_girl_weapon.hit 5

function light_green:item/piglin_girl/victim/last_victim with storage light_green:player

execute if score $piglin_weapon.type light_green.main.math matches 2 run function light_green:item/piglin_girl/victim/dagger with storage light_green:player