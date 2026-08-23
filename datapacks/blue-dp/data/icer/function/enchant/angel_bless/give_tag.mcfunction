tag @s add icer.being_angel
#進入天使狀態

execute store result score @s icer.player_max_health run attribute @s max_health get
#獲取玩家最大生命值

attribute @s max_health modifier add icer.angel_health 10 add_value
#增加最大生命值

execute if score @s icer.player_health = @s icer.player_max_health run effect give @s instant_health 1 2 true
#如果玩家滿血則讓玩家繼續維持滿血

playsound block.beacon.power_select ambient @s ~ ~ ~
function icer:enchant/angel_bless/particle_circle
#產生音效與特效