scoreboard players add @s green_wool.mobskill2 1
data merge entity @s {NoAI:1b}
execute if entity @s[scores={green_wool.mobskill2=1..20}] facing entity @p feet run tp @s ~ ~ ~ ~ ~10
execute if entity @s[scores={green_wool.mobskill2=20}] run tp @s ~ ~ ~ ~-90 ~
execute if entity @s[scores={green_wool.mobskill2=21..30}] run tp @s ~ ~ ~ ~18 ~
execute if entity @s[scores={green_wool.mobskill2=21..30}] positioned ~ ~2.25 ~ rotated ~ ~ run function green_wool:security/security_skill_shoot
execute if entity @s[scores={green_wool.mobskill2=30..}] run scoreboard players reset @s green_wool.mobskill
execute if entity @s[scores={green_wool.mobskill2=30..}] run data remove entity @s NoAI
execute if entity @s[scores={green_wool.mobskill2=30..}] run scoreboard players reset @s green_wool.mobskill2