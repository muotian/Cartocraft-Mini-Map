execute if entity @s[tag=light_green.from_player] run return run function light_green:item/piglin_girl/axe/crack/tick
execute unless score @s light_green.main.math matches 20.. run scoreboard players add @s light_green.main.math 1

rotate @s 0 0

execute if score @s light_green.main.math matches 1..19 run function light_green:mob/boss/piglin_girl/crack/particle

execute unless score @s light_green.main.math matches 20.. run return fail

# Mark Id to storage
execute store result storage light_green:boss id int 1 run scoreboard players get @s light_green.crack_id

execute store result storage light_green:boss length int 1 run scoreboard players get @s light_green.mob.ai
function light_green:mob/boss/piglin_girl/crack/target_senser/ with storage light_green:boss

function light_green:mob/boss/piglin_girl/crack/remove_entering_state with storage light_green:boss

#execute as @e[distance=..1,type=!#light_green:no_hp] run tag @s add light_green.crack_hit

#tag @e[type=!#light_green:no_hp,tag=!light_green.crack.searching.target.selection,tag=light_green.crack.searching.target.init] remove light_green.crack.searching.target.init
#tag @e[type=!#light_green:no_hp,tag=light_green.crack.searching.target.selection] remove light_green.crack.searching.target.selection

# game.main.tables.user.current.card.selected.id
# GameMainTablesUserCurrentCardSelectedId
# game_main_tables_user_current_card_selected_id
# Pneumonoultramicroscopicsilicovolcanoconiosis
# Function X Equals Y Square Z Plus Natural Log G Minus Expential XYZ

execute as @e[tag=light_green.crack_hit] unless score @s light_green.crack matches 1.. unless score @s light_green.team matches 1 run function light_green:mob/boss/piglin_girl/cant_move/apply
tag @e[tag=light_green.crack_hit] remove light_green.crack_hit