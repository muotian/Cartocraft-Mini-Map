summon marker ~ ~ ~ {Tags:["icer.scourge_staff.raycast"]}
#召喚雷射標記

tag @n[tag=icer.scourge_staff.raycast,tag=!icer.scourge_staff.summon_raycast] add icer.scourge_staff.summon_raycast
execute anchored eyes run tp @n[tag=icer.scourge_staff.summon_raycast] ^ ^ ^2 ~ ~
tag @n[tag=icer.scourge_staff.summon_raycast] remove icer.scourge_staff.summon_raycast
#將雷射傳送到玩家眼前並面向前方