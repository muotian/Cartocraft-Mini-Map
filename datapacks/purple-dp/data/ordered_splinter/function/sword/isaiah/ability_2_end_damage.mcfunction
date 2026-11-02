tag @e[tag=wool_purple.have_amethyst] remove wool_purple.have_amethyst
kill @e[tag=wool_purple.isaiah_amethyst]
kill @e[tag=wool_purple.isaiah_amethyst_in]
damage @s 20 magic by @p
execute as @s[tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
playsound minecraft:block.glass.break player @a ~ ~ ~ 2 1.2
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1.2
particle reverse_portal ~ ~1 ~ 0.2 0.4 0.2 0.8 80