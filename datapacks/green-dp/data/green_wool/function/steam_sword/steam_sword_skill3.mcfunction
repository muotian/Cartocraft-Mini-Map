#
execute unless entity @s[scores={green_wool.steam_sworld_skill_time=1..}] run tag @s remove green_wool.steam_sword_skill_player
execute if items entity @s weapon.mainhand *[minecraft:custom_data={green_wool.steam_sword:1b}] run function green_wool:steam_sword/steam_sword_skill4
scoreboard players remove @s[scores={green_wool.steam_sworld_skill_time=1..}] green_wool.steam_sworld_skill_time 1


#execute unless entity @s[scores={green_wool.steam_sworld_skill_time=1..}] run scoreboard players set @s green_wool.steam_sworld_skill2 0