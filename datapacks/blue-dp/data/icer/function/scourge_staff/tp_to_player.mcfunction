tag @s add icer.tp_scourge_staff_to_me
execute as @e[tag=aj.scourge_staff.root] if score @s aj.id = @p[tag=icer.tp_scourge_staff_to_me] aj.id run tp @s ^-0.7 ^0.5 ^1.4 ~ 0
tag @s remove icer.tp_scourge_staff_to_me
#將aj實體傳送到與自己綁定的玩家身邊