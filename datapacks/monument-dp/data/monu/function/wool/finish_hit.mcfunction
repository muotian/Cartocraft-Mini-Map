# 1. 點亮所有該星座的星星
$execute as @e[type=block_display,tag=$(target)] run data merge entity @s {brightness:{block:15,sky:15}, start_interpolation:0, interpolation_duration:40}

# 2. 播放音效
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 10 0.8

# 3. 產生撞擊粒子
$execute as @e[type=block_display,tag=$(target)] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
$kill @e[tag=energy_bolt,tag=bolt_$(color),limit=1,sort=nearest]
kill @s

# 4. {星座} - 歸位
$tellraw @a {"translate":"$(msg_2)","with":[{"translate":"$(const)","color":"$(chat_color)"},{"translate":"monu_return","color":"gold"}]}

scoreboard players add @a monu_return 1