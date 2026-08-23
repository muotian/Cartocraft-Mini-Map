tp @a @n[tag=icer.tp_player]


function icer:calamity_treant/summon/summon_boss
#召喚boss

bossbar add icer.calamity_treant {"text":"","extra":[{"translate":"icer.calamity_treant.name1","italic":false,"bold":true,"color":"#D7CEC6"},{"translate":"icer.calamity_treant.name2","italic":false,"bold":true,"color":"#99AE8B"},{"translate":"icer.calamity_treant.name3","italic":false,"bold":true,"color":"#5B8E4F"},{"translate":"icer.calamity_treant.name4","italic":false,"bold":true,"color":"#1D6E14"}]}
bossbar set icer.calamity_treant color green
bossbar set icer.calamity_treant max 444
bossbar set icer.calamity_treant value 444
bossbar set icer.calamity_treant visible true
bossbar set icer.calamity_treant players @a
#設定血條

stopsound @a music
playsound icer:boss_music music @a ~ ~ ~
playsound entity.ender_dragon.ambient
#播放音效

schedule function icer:calamity_treant/music 180s
#一段時間固定播放音樂

