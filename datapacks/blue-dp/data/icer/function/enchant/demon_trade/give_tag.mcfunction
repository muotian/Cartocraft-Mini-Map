tag @s add icer.being_demon
#進入惡魔狀態

attribute @s max_health modifier add icer.demon_health -10 add_value
#降低最大生命值

playsound block.beacon.power_select ambient @s ~ ~ ~
function icer:enchant/demon_trade/particle_circle
#生成音效和特效