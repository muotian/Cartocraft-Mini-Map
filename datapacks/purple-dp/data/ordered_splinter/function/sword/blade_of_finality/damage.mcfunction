tag @s remove wool_purple.hit

damage @s[type=#mobs] 1 player_attack by @p[tag=wool_purple.chain_origin]
execute as @s[tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~ 2 0.25
