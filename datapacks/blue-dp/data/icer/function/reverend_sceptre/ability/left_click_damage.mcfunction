playsound entity.experience_orb.pickup ambient @a ~ ~ ~
#播放音效

summon marker ^ ^1.5 ^1 {Tags:["icer.reverend_sceptre.bullet"]}
#召喚子彈標記

scoreboard players add @s aj.reverend_sceptre_left_click.frame 1
#強制讓動畫跳過一幀避免指令被重複執行