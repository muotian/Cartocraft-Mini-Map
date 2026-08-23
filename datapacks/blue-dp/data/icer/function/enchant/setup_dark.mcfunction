data merge entity @s {NoGravity:1b}
data merge entity @s {Age:-32768}
data merge entity @s {CustomName:{"text":"","extra":[{"text":"⊚","italic":false,"color":"#3B304E"},{"translate":"icer.dark.name","italic":false,"bold":true,"color":"#301B44"},{"text":"⊚","italic":false,"color":"#250539"}]}}
data merge entity @s {CustomNameVisible:true}
data merge entity @s {Invulnerable:1b}
#設定基本資料

tag @s add icer.dark.need_tp
execute as @p at @s anchored eyes rotated ~ 0 run tp @n[tag=icer.dark.need_tp] ^ ^-0.6 ^2
tag @s remove icer.dark.need_tp
#將道具傳送到玩家眼前

scoreboard players add icer.last.id icer.dark.id 1
scoreboard players operation @s icer.dark.id = icer.last.id icer.dark.id
#增加一個新的數字以綁定道具實體

summon interaction ~ ~ ~ {Tags:["icer.dark.interaction","icer.dark.interaction.undefined"],width:0.55f,height:0.55f}
#生成互動實體

scoreboard players operation @n[tag=icer.dark.interaction.undefined] icer.dark_interaction.id = @s icer.dark.id
#將互動實體與道具實體綁定

tag @n[tag=icer.dark.interaction.undefined] remove icer.dark.interaction.undefined
#拔除未綁定的標籤

tag @s add icer.dark.has_setup
#已經完成資料設置

playsound item.armor.equip_netherite ambient @p ~ ~ ~
#播放音效