#by JackyHsu0909

tp @s ^ ^ ^0.75

particle dust{color: [0.5, 0.5, 0.5], scale: 1.5} ^ ^ ^0.8 0 0 0 0 0
particle dust{color: [0.5, 0.5, 0.5], scale: 1.5} ^0.35 ^ ^0.5 0 0 0 0 0
particle dust{color: [0.5, 0.5, 0.5], scale: 1.5} ^-0.35 ^ ^0.5 0 0 0 0 0
particle dust{color: [0.5, 0.5, 0.5], scale: 1.5} ^0.7 ^ ^0.3 0 0 0 0 0
particle dust{color: [0.5, 0.5, 0.5], scale: 1.5} ^-0.7 ^ ^0.3 0 0 0 0 0

particle dust{color: [0.75, 0.75, 0.75], scale: 1.5} ^ ^ ^-0.1 0 0 0 0 0
particle dust{color: [0.75, 0.75, 0.75], scale: 1.5} ^0.35 ^ ^-0.4 0 0 0 0 0
particle dust{color: [0.75, 0.75, 0.75], scale: 1.5} ^-0.35 ^ ^-0.4 0 0 0 0 0
particle dust{color: [0.75, 0.75, 0.75], scale: 1.5} ^0.75 ^ ^-0.2 0 0 0 0 0
particle dust{color: [0.75, 0.75, 0.75], scale: 1.5} ^-0.75 ^ ^-0.2 0 0 0 0 0

tag @s add black.atker
#execute if score @s black.timer matches 3.. positioned ~ ~-1 ~ as @a[distance=..1.25,limit=1] run function black:skill/blade/hit
tag @s remove black.atker

execute unless block ~ ~ ~ #black:transparent run kill @s

#scoreboard players add @s black.timer 1
#execute if entity @s[scores={black.timer=80..}] run kill @s