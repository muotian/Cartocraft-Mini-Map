tag @s add icer.dark.test_dead
#將所有互動實體加上偵測標籤

execute as @e[tag=icer.dark.has_setup,distance=..10] if score @s icer.dark.id = @n[tag=icer.dark.test_dead] icer.dark_interaction.id run tag @n[tag=icer.dark.test_dead] remove icer.dark.test_dead
#如果道具實體存在就把互動實體的標籤拿掉

execute as @n[tag=icer.dark.test_dead] run kill @s
#將找不到道具實體的互動實體刪除

tag @s add icer.dark.interaction.target
execute if data entity @s interaction on target run function icer:enchant/test_hand_for_dark
tag @s remove icer.dark.interaction.target
#當互動實體被互動時觸發附魔指令

data remove entity @s interaction
#清除互動實體資料