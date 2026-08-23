
scoreboard players add @s brown_wool.thunder_shadow_guard.playsound 1

execute if score @s brown_wool.thunder_shadow_guard.playsound matches 5260.. run stopsound @s * brown_wool:custom.fire_and_thunder
execute if score @s brown_wool.thunder_shadow_guard.playsound matches 5260.. run playsound brown_wool:custom.fire_and_thunder record @s
execute if score @s brown_wool.thunder_shadow_guard.playsound matches 5260.. run scoreboard players reset @s brown_wool.thunder_shadow_guard.playsound