execute if predicate green_wool:is_sneaking run scoreboard players add @s green_wool.steam_sworld_skill1 1
execute if entity @s[scores={green_wool.steam_sworld_skill1=1}] unless entity @s[scores={green_wool.steam_sworld_skill2=3..}] unless entity @s[scores={green_wool.steam_sworld_skill_time=1..100}] if items entity @s weapon.offhand *[custom_data={green_wool.steam_sword:1b}] run function green_wool:steam_sword/steam_sword_skill1
execute unless predicate green_wool:is_sneaking run scoreboard players reset @s green_wool.steam_sworld_skill1
execute if entity @s[scores={green_wool.steam_sworld_skill_time=..100}] run function green_wool:steam_sword/steam_sword_skill2


#execute if entity @s[tag=!green_wool.steam_sword_skill_player] run function green_wool:steam_sword/steam_sword_skill2