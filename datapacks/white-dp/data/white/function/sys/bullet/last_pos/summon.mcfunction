
execute unless entity @s[type=item] run return run tellraw @a ["",{"text": "☠ [Error] 執行last_pos實體並非item","color": "red"}]
execute summon marker run function white:sys/bullet/last_pos/data
data modify entity @s Thrower set from storage temp UUID
data remove storage temp UUID