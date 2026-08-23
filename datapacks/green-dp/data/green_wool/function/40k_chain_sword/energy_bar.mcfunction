execute as @a if items entity @s[scores={green_wool.chain_sword_energy_bar=1..}] weapon.mainhand netherite_sword[custom_data={green_chain_sword_activate:1b,green_upgraped:1b}] run scoreboard players remove @s green_wool.chain_sword_energy_bar 2

execute as @a unless entity @s[scores={green_wool.chain_sword_energy_bar=1000..}] run scoreboard players add @s green_wool.chain_sword_energy_bar 1

execute as @a[scores={green_wool.chain_sword_energy_bar=..1}] run function green_wool:40k_chain_sword/chain_sword_unactivate