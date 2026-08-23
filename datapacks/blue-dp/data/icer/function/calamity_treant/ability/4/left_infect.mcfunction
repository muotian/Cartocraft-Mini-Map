execute as @a[distance=..2.5] at @s run function icer:calamity_treant/ability/4/damage
#對周圍玩家造成傷害

function icer:calamity_treant/ability/4/particle_circle
playsound entity.endermite.hurt ambient @a ~ ~ ~
#產生音效與特效

kill @e[tag=icer.calamity_treant.abilitty4_blockdisplay_left]
#清除方塊展示實體

