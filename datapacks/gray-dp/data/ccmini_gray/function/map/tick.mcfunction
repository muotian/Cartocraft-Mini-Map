#beacon
execute as @e[type=interaction,tag=gray.beacon.interaction,tag=gray.beacon.interaction.unignited] if data entity @s interaction at @s run function ccmini_gray:map/beacon/if_ignit
execute as @e[type=interaction,tag=gray.beacon.interaction,tag=!gray.beacon.interaction.unignited] run scoreboard players add @s gray.exist 1
execute as @e[type=interaction,tag=gray.beacon.interaction,tag=!gray.beacon.interaction.unignited] at @s if score @s gray.exist matches 1 run playsound minecraft:block.fire.ambient block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=gray.beacon.interaction,tag=!gray.beacon.interaction.unignited] at @s if score @s gray.exist matches 30.. run scoreboard players reset @s gray.exist
execute as @e[type=interaction,tag=gray.beacon.interaction,tag=!gray.beacon.interaction.unignited] at @s run fill ~1 ~ ~1 ~-1 ~2 ~-1 air replace water
execute as @e[type=interaction,tag=gray.beacon.interaction,tag=!gray.beacon.interaction.unignited] at @s positioned ~-1.5 ~ ~-1.5 as @e[dx=2,dy=2,dz=2] run damage @s 1 on_fire
#ember
execute as @e[type=interaction,tag=gray.ember.interaction] if data entity @s interaction at @s run function ccmini_gray:map/ember/if_ignit
#boss
function ccmini_gray:map/boss/wake/tick
execute as @e[type=parched,tag=gray.boss.hitbox,limit=1] at @s run function ccmini_gray:map/boss/battle/tick
execute as @e[type=item_display,tag=aj.gray_sword_beam.root] at @s run function ccmini_gray:map/boss/battle/skill/ranged/sword_beam/move
function ccmini_gray:map/boss/after_battle/tick
#remains
function ccmini_gray:map/remains/tick
#ritual_torch
function ccmini_gray:map/ritual_torch/tick
#guide
function ccmini_gray:map/guide/tick