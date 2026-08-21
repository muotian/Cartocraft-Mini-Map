scoreboard players add @s light_green.main.math 1

tag @s add light_green.target
$execute at @s if entity @n[tag=light_green.mud,tag=!light_green.target,distance=..$(size3)] run kill @s
tag @s remove light_green.target

$execute at @s positioned ~-$(size2) ~ ~-$(size2) as @n[dx=$(size),dz=$(size),type=!#light_green:no_hp] run tag @s add light_green.mud_apply
$execute at @s positioned ~-$(size2) ~ ~-$(size2) as @n[tag=!light_green.boss.big_hoglin,dx=$(size),dz=$(size),type=!#light_green:no_hp] run attribute @s movement_speed modifier add light_green:big_hoglin_mud -0.5 add_multiplied_total
$execute at @s positioned ~-$(size2) ~ ~-$(size2) as @n[tag=!light_green.boss.big_hoglin,dx=$(size),dz=$(size),type=!#light_green:no_hp] run attribute @s jump_strength modifier add light_green:big_hoglin_mud -0.5 add_multiplied_total

execute if score @s light_green.main.math matches 400.. run kill @s