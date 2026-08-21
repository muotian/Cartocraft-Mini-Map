# 標記已啟動
$tag @a add lit_$(color)

$tellraw @a {"translate":"$(msg_1)","color":"dark_gray"}

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.2
# 在對應的 Marker 處召喚子彈，並存入目標星座 Tag
$execute at @e[tag=monu_$(color),limit=1,type=marker] run summon item_display ~ ~ ~ {teleport_duration:20,Tags:["energy_bolt","bolt_$(color)"],data:{star_tag:"$(star_tag)",color:"$(color)"}}

# 轉向隨機一顆星星
$execute positioned as @e[tag=monu_$(color),limit=1,type=marker] run execute as @e[tag=energy_bolt,tag=bolt_$(color),limit=1,sort=nearest,type=item_display,distance=..4] at @s facing entity @e[type=block_display,tag=$(star_tag),distance=..128,limit=1,sort=random] eyes run tp @s ~ ~ ~ ~ ~

# 召喚一個計時用 Marker，把資料存進去
$summon marker ~ ~ ~ {Tags:["delay_timer","timer_$(color)"],data:{target:"$(star_tag)",color:"$(color)",msg_2:"$(msg_2)",const:"$(const)",chat_color:"$(chat_color)"}}

# 設定倒數時間，例如 60 刻 (3秒)
$scoreboard players set @e[tag=timer_$(color),limit=1] monu_timer 60