
scoreboard players add #limit white.main 1
execute if score #limit white.main matches 600.. run return run kill @s

# down
execute if block ~ ~-1 ~ #white:transparent positioned ~ ~-1 ~ run return run function white:move/crayon_boots/crayon/tpto_ground

# final
tp @e[tag=summon,type=block_display,limit=1] ~ ~ ~
kill @s