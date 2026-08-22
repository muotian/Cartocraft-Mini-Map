playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1 0.8
scoreboard players set @s gray.gopr.invincibility.frames.additional 5
execute if score @s gray.gopr_energy matches 0..19 run scoreboard players add @s gray.gopr_energy 1
