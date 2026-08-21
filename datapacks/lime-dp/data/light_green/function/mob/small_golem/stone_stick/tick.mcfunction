scoreboard players add @s light_green.main.math 1
execute store result storage light_green:mob id int 1 run scoreboard players get @s light_green.golem_id

function light_green:mob/small_golem/stone_stick/tick2 with storage light_green:mob
execute if score @s light_green.main.math matches 80.. run scoreboard players set @s light_green.main.math 1