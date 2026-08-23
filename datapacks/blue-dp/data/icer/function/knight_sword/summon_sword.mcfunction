tag @s add icer.holding_knightsword
#給予玩家正在拿取aj物品的標籤

function animated_java:knightsword/summon {args: {animation: 'knight_sword_standby', start_animation: true}}
#召喚aj實體並且讓它執行待機動畫

scoreboard players operation @s aj.id = aj.last_id aj.id
#將aj實體與玩家綁定