
scoreboard players add @s brown_wool.thunder_rock_guard.playsound 1

execute if score @s brown_wool.thunder_rock_guard.playsound matches 1260.. run stopsound @s * brown_wool:custom.kaiji_dance_with_the_devil
execute if score @s brown_wool.thunder_rock_guard.playsound matches 1260.. run playsound brown_wool:custom.kaiji_dance_with_the_devil record @s
execute if score @s brown_wool.thunder_rock_guard.playsound matches 1260.. run scoreboard players reset @s brown_wool.thunder_rock_guard.playsound

