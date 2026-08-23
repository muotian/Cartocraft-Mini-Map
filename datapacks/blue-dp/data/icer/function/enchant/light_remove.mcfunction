tag @s add icer.light.interaction.target
#將所有互動實體加上偵測標籤

execute if data entity @s interaction on target run function icer:enchant/test_hand_for_light
#如果道具實體存在就把互動實體的標籤拿掉

tag @s remove icer.light.interaction.target
#將找不到道具實體的互動實體刪除

tag @s add icer.light.test_dead
execute as @e[tag=icer.light.has_setup,distance=..10] if score @s icer.light.id = @n[tag=icer.light.test_dead] icer.light_interaction.id run tag @n[tag=icer.light.test_dead] remove icer.light.test_dead
execute as @n[tag=icer.light.test_dead] run kill @s
#當互動實體被互動時觸發附魔指令

data remove entity @s interaction
#清除互動實體資料