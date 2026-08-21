#

scoreboard players remove @a[scores={MagentaMithrilPizza=1..}] MagentaMithrilPizza 1

execute as @a[scores={MagentaMithrilPizza=1..}] at @s as @e[distance=..3,type=!player,type=!#cook:except] run function cook:item/mithril_pizza/slow
