scoreboard players add $count wool_purple.raycast 1

tag @s add wool_purple.hit
execute at @s as @e[type=!#no_hp,tag=!wool_purple.hit,sort=random,distance=..5] facing entity @s feet positioned as @s facing ^ ^ ^-1 run function ordered_splinter:sword/blade_of_finality/chain
# execute at @e[type=!#no_hp,tag=!wool_purple.hit,sort=random,distance=..5] anchored eyes facing entity @s eyes as @e[type=!#no_hp,distance=0,limit=1] run function ordered_splinter:sword/blade_of_finality/chain