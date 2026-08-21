#
execute as @a[scores={MagentaBaguette=11}] at @s run function cook:item/baguette_motion {"score":60}
execute as @a[scores={MagentaBaguette=10}] at @s run function cook:item/baguette_motion {"score":40}
execute as @a[scores={MagentaBaguette=9}] at @s run function cook:item/baguette_motion {"score":20}
execute as @a[scores={MagentaBaguette=12}] at @s run playsound entity.player.attack.sweep master @a[distance=..5] ~ ~ ~ 1 0.5
data modify storage magenta bg set value {"dmg":0}
execute as @a[scores={MagentaBaguette=9}] store result storage magenta bg.dmg float 1.5 run attribute @s attack_damage get
execute as @a[scores={MagentaBaguette=9}] at @s run function cook:item/baguette_damage with storage magenta bg
execute as @a[scores={MagentaBaguette=6}] at @s run playsound entity.player.attack.sweep master @a[distance=..5] ~ ~ ~ 1 0.3
execute as @a[scores={MagentaBaguette=8}] at @s run function cook:item/baguette_motion {"score":10}
execute as @a[scores={MagentaBaguette=7}] at @s run function cook:item/baguette_motion {"score":0}
execute as @a[scores={MagentaBaguette=6}] at @s run function cook:item/baguette_motion {"score":-10}
execute as @a[scores={MagentaBaguette=5}] at @s run function cook:item/baguette_motion {"score":-20}
execute as @a[scores={MagentaBaguette=4}] at @s run function cook:item/baguette_motion {"score":-40}
execute as @a[scores={MagentaBaguette=3}] at @s run function cook:item/baguette_motion {"score":-60}
execute as @a[scores={MagentaBaguette=2}] at @s run function cook:item/baguette_motion {"score":-80}
execute as @a[scores={MagentaBaguette=1}] at @s run function cook:item/baguette_motion {"score":-100}

execute as @a[scores={MagentaBaguette=0}] at @s run kill @e[limit=1,sort=nearest,tag=MagentaBaguette,type=item_display]
scoreboard players reset @a[scores={MagentaBaguette=0}] MagentaBaguette
scoreboard players remove @a[scores={MagentaBaguette=0..}] MagentaBaguette 1

scoreboard players remove @a[scores={MagentaBaguetteCD=1..}] MagentaBaguetteCD 1

# execute as @e[type=item_display] at @s run tp @s ~ ~ ~ ~5 ~5
