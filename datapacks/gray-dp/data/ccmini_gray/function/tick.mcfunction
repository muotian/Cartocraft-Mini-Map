#id
execute as @a unless score @s gray.id matches 1.. run function ccmini_gray:system/id
#tick
function ccmini_gray:skills/tick
function ccmini_gray:mob/tick
function ccmini_gray:map/tick

#timer計算
execute as @a if score @s gray.hourglass_timer matches 1.. run scoreboard players remove @s gray.hourglass_timer 1
execute as @a if score @s gray.hourglass_cd matches 1.. run scoreboard players remove @s gray.hourglass_cd 1
execute as @a if score @s gray.hourglass_cd matches ..0 run scoreboard players reset @s gray.hourglass_cd
execute as @a if score @s gray.relic_of_dustwind_cd matches 1.. run scoreboard players remove @s gray.relic_of_dustwind_cd 1
execute as @a if score @s gray.relic_of_dustwind_cd matches ..0 run scoreboard players reset @s gray.relic_of_dustwind_cd
execute as @a if score @s gray.sfs_cd matches 1.. run scoreboard players remove @s gray.sfs_cd 1
execute as @a if score @s gray.sfs_cd matches ..0 run scoreboard players reset @s gray.sfs_cd
execute as @e[type=parched,tag=gray.desert_ranger_parched] if score @s gray.desert_ranger_prepare matches 1.. run scoreboard players remove @s gray.desert_ranger_prepare 1
execute as @e[type=parched,tag=gray.desert_ranger_parched] if score @s gray.desert_ranger_prepare matches ..0 run scoreboard players reset @s gray.desert_ranger_prepare
execute as @a if score @s gray.gopr_stop_attack matches 1.. run scoreboard players remove @s gray.gopr_stop_attack 1
execute as @a if score @s gray.gopr_stop_attack matches ..0 run scoreboard players reset @s gray.gopr_stop_attack
execute as @a if score @s gray.gopr_cd matches 1.. run scoreboard players remove @s gray.gopr_cd 1
execute as @a if score @s gray.gopr_cd matches ..0 run scoreboard players reset @s gray.gopr_cd
execute as @a if score @s gray.gopr.dodge.cd matches 1.. run scoreboard players remove @s gray.gopr.dodge.cd 1
execute as @a if score @s gray.gopr.dodge.cd matches ..0 run scoreboard players reset @s gray.gopr.dodge.cd
execute as @a if score @s gray.gopr.invincibility.frames matches 1.. run scoreboard players remove @s gray.gopr.invincibility.frames 1
execute as @a if score @s gray.gopr.invincibility.frames matches ..0 run scoreboard players reset @s gray.gopr.invincibility.frames
execute as @a unless score @s gray.gopr.invincibility.frames matches 1.. if score @s gray.gopr.invincibility.frames.additional matches 1.. run scoreboard players remove @s gray.gopr.invincibility.frames.additional 1
execute as @a if score @s gray.gopr.invincibility.frames.additional matches ..0 run scoreboard players reset @s gray.gopr.invincibility.frames.additional
execute as @a if score @s gray.boss.sandsword_1.cd matches 1.. run scoreboard players remove @s gray.boss.sandsword_1.cd 1
execute as @a if score @s gray.boss.sandsword_2.cd matches 1.. run scoreboard players remove @s gray.boss.sandsword_2.cd 1
execute as @a if score @s gray.boss.sandsword_3.cd matches 1.. run scoreboard players remove @s gray.boss.sandsword_3.cd 1

#死亡切生存
execute as @a[gamemode=adventure] if score @s gray.playerdie matches 1 run gamemode survival

#右鍵偵測
execute as @a at @s if score @s gray.rightclick matches 1.. run function ccmini_gray:system/rightclick

#左鍵偵測
scoreboard players reset @a gray.leftclick

#清空死亡計分板
scoreboard players reset @a gray.playerdie
