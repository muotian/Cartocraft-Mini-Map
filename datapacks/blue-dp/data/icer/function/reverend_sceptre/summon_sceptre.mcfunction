tag @s add icer.holding_reverend_sceptre
#給玩家正在拿取aj物品的標籤

function animated_java:reverend_sceptre/summon {args: {animation: 'reverend_sceptre_standby', start_animation: true}}
#召喚aj實體並讓它執行待機動畫

scoreboard players operation @s aj.id = aj.last_id aj.id
#把aj實體跟玩家綁定