advancement revoke @s only icer:using_knightsword
#將進度刪除以便重複偵測

scoreboard players add @s icer.using_knightsword 1
#偵測玩家長按右鍵的時長

tag @s add icer.use_knightsword
execute if entity @s[tag=!icer.using_knightsword] as @e[tag=aj.knightsword.root] at @s if score @s aj.id = @p[tag=icer.use_knightsword] aj.id run function animated_java:knightsword/animations/using_knight_sword/play
tag @s remove icer.use_knightsword
#讓與該玩家綁定的aj實體開始執行蓄力動畫

tag @s[tag=!icer.using_knightsword] add icer.using_knightsword
#給玩家添加一個正在長按右鍵的標籤