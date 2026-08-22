#
scoreboard players set @s pink.item.wolf_pieces.break 0
execute unless items entity @s weapon.offhand *[custom_data~{pink_sp_item:"wolf_pieces"}] run return fail

#
summon wolf ~ ~ ~1 {Tags:["new","pink.wolf_pieces_wolf"],Invulnerable:1b,anger_end_time:1000}
summon wolf ~ ~ ~-1 {Tags:["new","pink.wolf_pieces_wolf"],Invulnerable:1b,anger_end_time:1000}

execute as @e[tag=pink.wolf_pieces_wolf,tag=new] run data modify entity @s angry_at set from entity @n[type=!#pink:object,type=!player,type=!wolf] UUID

playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1