execute as @a[scores={cyan.fireaxe=1..}] if items entity @s weapon.mainhand *[item_model="cyan:fireaxe"] at @s run function cyan:fireaxe
scoreboard players set @a cyan.fireaxe 0

execute at @e[type=ghast,tag=cyan.ghast] run particle flame ~ ~ ~ 1.5 1.5 1.5 .1 2 force
execute as @e[type=item_display,tag=cyan.bullet] at @s run function cyan:bullet