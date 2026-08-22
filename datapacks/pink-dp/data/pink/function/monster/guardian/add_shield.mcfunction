scoreboard players set @s pink.monster.guardian.block_cd 0

# shield
effect give @s resistance infinite 2 true
effect give @s glowing infinite 1 true
item replace entity @s weapon.offhand with shield

tag @s add shield

playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 1