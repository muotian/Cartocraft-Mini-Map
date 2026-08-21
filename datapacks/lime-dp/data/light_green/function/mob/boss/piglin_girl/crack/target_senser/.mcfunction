# Add Target Select Tag
$execute as @e[distance=..$(length),type=!#light_green:no_hp] run tag @s add light_green.crack.searching.target
# Add Selection Tag
#tag @e[tag=light_green.crack.searching.target,type=!#light_green:no_hp] add light_green.crack.searching.target.selection
# Mark Self as Marker
tag @s add light_green.crack.searching_marker
# Run Senser
execute at @s as @e[tag=light_green.crack.searching.target,type=!#light_green:no_hp] run function light_green:mob/boss/piglin_girl/crack/target_senser/test with storage light_green:boss
tag @s remove light_green.crack.searching_marker
tag @e[tag=light_green.crack.searching.target] remove light_green.crack.searching.target