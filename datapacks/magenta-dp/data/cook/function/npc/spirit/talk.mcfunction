#

scoreboard players add @s MagentaSpiritQuest 0
scoreboard players add @s MagentaSpiritLine 0

# 對話進行中：顯示下一句（需搭配對應的任務階段，避免任務被重置後殘留的行數接錯對話）
execute if score @s MagentaSpiritQuest matches 1 if score @s MagentaSpiritLine matches 1..12 run return run function cook:npc/spirit/dialogue1/print
execute if score @s MagentaSpiritQuest matches 1.. if score @s MagentaSpiritLine matches 101..103 run return run function cook:npc/spirit/dialogue2/print

# 第一次見面：開始對話一
execute if score @s MagentaSpiritQuest matches 0 run return run function cook:npc/spirit/dialogue1/start

# 已集齊 5 種傳說食材：開始結局對話
execute if score @s MagentaSpiritQuest matches 1.. \
if items entity @s container.* echo_shard[custom_data={"magenta_wool":1}] \
if items entity @s container.* echo_shard[custom_data={"magenta_wool":2}] \
if items entity @s container.* echo_shard[custom_data={"magenta_wool":3}] \
if items entity @s container.* echo_shard[custom_data={"magenta_wool":4}] \
if items entity @s container.* echo_shard[custom_data={"magenta_wool":5}] \
run return run function cook:npc/spirit/dialogue2/start

# 獲得洋紅色羊毛：也開始結局對話
execute if score @s MagentaSpiritQuest matches 1.. \
if items entity @s container.* magenta_wool \
run return run function cook:npc/spirit/dialogue2/start

# 任務進行中但食材尚未集齊：提醒玩家
tellraw @s [{"translate":"magenta.entity.culinarian_sprites.name","color":"light_purple","bold":true},{"text":" : ","color":"gray"},{"translate":"magenta.dialogue_1_12","color":"gray","italic":true}]
