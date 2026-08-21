execute as @e[type=zombie,tag=mini_light.chain_blade] at @s run function mini_light:monster/chain_blade/as


execute as @e[type=area_effect_cloud,tag=mini_light.chain_hook] at @s run function mini_light:monster/chain_blade/chain_move

execute as @e[type=block_display,tag=mini_light.chain] run scoreboard players remove @s mini_light.chain_blade.chain_life 1

execute as @e[type=block_display,tag=mini_light.chain,scores={mini_light.chain_blade.chain_life=..0}] at @s run playsound block.chain.place master @a[distance=..6] ~ ~ ~ 0.8 2
execute as @e[type=block_display,tag=mini_light.chain,scores={mini_light.chain_blade.chain_life=..0}] at @s run kill @s