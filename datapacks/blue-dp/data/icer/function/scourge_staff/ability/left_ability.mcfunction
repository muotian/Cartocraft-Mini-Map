tag @s add icer.scourge_staff.left
execute as @a[tag=icer.holding_scourge_staff] if score @s aj.id = @n[tag=icer.scourge_staff.left] aj.id at @s run function icer:scourge_staff/ability/summon_raycast
tag @s remove icer.scourge_staff.left
#將指令執行者跟執行位置設定到與aj實體綁定的玩家身上

scoreboard players add @s aj.scourge_staff_left_click.frame 1
#強制讓動畫跳過一幀避免指令被重複執行