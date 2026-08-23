
scoreboard players add @s brown_wool.cangting_general.playsound 1

execute if score @s brown_wool.cangting_general.playsound matches 3260.. run stopsound @s * brown_wool:custom.makai_symphony_dragon_castle
execute if score @s brown_wool.cangting_general.playsound matches 3260.. run playsound brown_wool:custom.makai_symphony_dragon_castle record @s
execute if score @s brown_wool.cangting_general.playsound matches 3260.. run scoreboard players reset @s brown_wool.cangting_general.playsound