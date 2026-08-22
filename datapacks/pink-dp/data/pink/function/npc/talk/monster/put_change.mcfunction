#
$tp @n[tag=m$(id)_rc] ~ ~-1000 ~
$kill @n[tag=m$(id)_rc]

data modify entity @s glow_color_override set value 1179392
$execute if score $m$(id)_id pink.npc.talk matches 1 run data modify entity @s item.components."minecraft:item_model" set value "pink:b"
$execute if score $m$(id)_id pink.npc.talk matches 2 run data modify entity @s item.components."minecraft:item_model" set value "pink:w"

playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 0.7 1
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 0.7 2
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1

