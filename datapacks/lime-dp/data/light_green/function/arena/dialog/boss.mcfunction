execute unless score $golem_kill light_green.main.math matches 1 run return run tellraw @s [{text:"<!>",color:red},{translate:"light_green:graud_golem"}]
execute if entity @e[tag=light_green.boss.big_hoglin] run return run tellraw @s [{text:"<!>",color:red},{translate:"light_green:big_hoglin"}]
execute if entity @e[tag=light_green.boss.piglin_girl] run return run tellraw @s [{text:"<!>",color:red},{translate:"light_green:piglin_general_name"}]
