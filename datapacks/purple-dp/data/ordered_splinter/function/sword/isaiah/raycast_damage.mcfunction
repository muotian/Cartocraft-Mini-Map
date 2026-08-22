execute as @n[tag=wool_purple.isaiah_target,dx=0] run damage @s 15 magic by @p
execute as @n[tag=wool_purple.isaiah_target,dx=0,tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
execute as @n[tag=wool_purple.isaiah_target,dx=0] run tag @s remove wool_purple.have_amethyst
kill @n[tag=wool_purple.isaiah_amethyst]
function ordered_splinter:sword/isaiah/remove_display_in
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 0.5 1.2
playsound minecraft:block.amethyst_block.step player @a ~ ~ ~ 2 0.1
playsound minecraft:block.glass.break player @a ~ ~ ~ 2 1.2
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1.2
particle reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.8 30