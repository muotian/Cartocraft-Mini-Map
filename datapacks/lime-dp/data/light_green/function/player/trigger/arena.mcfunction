scoreboard players enable @s light_green.arena.dialog

execute if score @s light_green.arena.dialog matches 1 run function light_green:arena/dialog/difficulty_hoglin
execute if score @s light_green.arena.dialog matches 2 run function light_green:arena/dialog/piglin_girl
execute if score @s light_green.arena.dialog matches 3 run function light_green:arena/dialog/join
execute if score @s light_green.arena.dialog matches 4 run function light_green:arena/dialog/leave

trigger light_green.arena.dialog set 0
scoreboard players enable @s light_green.arena.dialog