scoreboard players add @s light_green.adapt.victim.hit 1
scoreboard players reset @s light_green.adapt.attacker.hit
$execute if score @s light_green.adapt.victim.hit matches 2.. as @e[tag=light_green.bullet.keep,distance=..50,scores={light_green.player_id=$(id)},type=marker] run function light_green:item/golem/mod/adapt/bullet/convert_heal with storage light_green:player
execute if score @s light_green.adapt.victim.hit matches 2.. run scoreboard players reset @s light_green.adapt.victim.hit