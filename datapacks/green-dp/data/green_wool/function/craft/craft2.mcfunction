execute if entity @s[tag=green_wool.steam_sword_craft] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run function green_wool:steam_sword/give_steam_sword
execute if entity @s[tag=green_wool.pipe_craft] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run function green_wool:pipe/give_pipe
execute if entity @s[tag=green_wool.bullet_craft] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run function green_wool:boltgun/give_boltgun_bullet
execute if entity @s[tag=green_wool.boltgun_craft] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run function green_wool:boltgun/give_boltgun
execute on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run playsound block.anvil.use block @a ~ ~ ~ 0.2 1 1
execute on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run kill @n
execute on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run kill @n[type=item,distance=..1]
execute on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run kill @n[type=item,distance=..1]
execute on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run kill @n[type=item,distance=..1]
execute unless entity @e[type=item,distance=..1] run kill @s