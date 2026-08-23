advancement revoke @s only icer:demon_hit
#清除成就

execute store result score @s icer.demon_random run random value 1..2
#取隨機數1或2

execute if score @s icer.demon_random matches 1 run effect give @s instant_health 1 0 true
#50%機率回血

scoreboard players reset @s icer.demon_random
#重製機率