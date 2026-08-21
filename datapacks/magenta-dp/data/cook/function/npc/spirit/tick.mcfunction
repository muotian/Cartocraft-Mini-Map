#

# 食靈被移除時一併清除互動實體
execute as @e[type=interaction,tag=MagentaSpiritInteraction] at @s unless entity @e[type=mannequin,tag=MagentaSpirit,distance=..0.1] run kill @s

# 右鍵與食靈對話
execute as @e[type=interaction,tag=MagentaSpiritInteraction] if data entity @s interaction on target run function cook:npc/spirit/talk
execute as @e[type=interaction,tag=MagentaSpiritInteraction] run data remove entity @s interaction
execute as @e[type=interaction,tag=MagentaSpiritInteraction] run data remove entity @s attack

# 附近有玩家時看向最近的玩家
execute as @e[type=mannequin,tag=MagentaSpirit] at @s if entity @a[distance=..5] run rotate @s facing entity @a[distance=..5,sort=nearest,limit=1] feet
