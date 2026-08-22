#
damage @s 5 player_attack by @n[tag=pink.devour]
effect give @s hunger 3 50 false
effect give @s slowness 5 0 false
effect give @s weakness 5 0 false


playsound minecraft:entity.phantom.bite player @s ~ ~ ~ 0.7 0.7
playsound minecraft:entity.warden.attack_impact player @s ~ ~ ~ 1 1
playsound minecraft:entity.generic.eat player @s ~ ~ ~ 1 1
