advancement revoke @s only icer:used_knightsword
#清除進度以便下次偵測

tag @s add icer.summon_circle
#給玩家一個需要召喚粒子效果圈的標籤

schedule function icer:knight_sword/ability/summon_magic_circle 4t
#將召喚效果加入排程

function icer:knight_sword/ability/stop_using_knightsword
tag @s add icer.knightsword_right_animation
execute as @e[tag=aj.knightsword.root] at @s if score @s aj.id = @p[tag=icer.knightsword_right_animation] aj.id run function animated_java:knightsword/animations/knight_sword_right_ability/play
tag @s remove icer.knightsword_right_animation
#將蓄力動畫中斷並接上施放技能的動畫


playsound entity.player.attack.strong ambient @a ~ ~ ~
playsound entity.player.attack.sweep ambient @a ~ ~ ~
#播放音效


execute as @e[type=!#icer:cant_damage,distance=..4] at @s run function icer:knight_sword/ability/right_damage
#執行傷害函數

item modify entity @s weapon.mainhand icer:reset_1
item modify entity @s weapon.mainhand icer:reset_2
#刷新物品狀態避免物品被消耗