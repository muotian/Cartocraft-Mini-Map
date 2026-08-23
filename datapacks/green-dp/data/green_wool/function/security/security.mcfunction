#執行者:機械保全
scoreboard players add @s green_wool.mobskill 1
execute if entity @s[scores={green_wool.mobskill=120..}] run function green_wool:security/security_skill