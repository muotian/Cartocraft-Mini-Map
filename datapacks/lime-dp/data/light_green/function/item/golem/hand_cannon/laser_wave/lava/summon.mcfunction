summon marker ~ ~ ~ {Tags:["light_green","light_green.mob","light_green.hand_cannon.wave","light_green.new.mob","light_green.lava"]}
scoreboard players operation @n[tag=light_green.new.mob] light_green.player_id = @s light_green.player_id
execute at @s run rotate @n[tag=light_green.new.mob] ~ ~
tag @n[tag=light_green.new.mob] remove light_green.new.mob