tag @s add icer.knightsword
execute as @a[tag=icer.holding_knightsword] if score @s aj.id = @n[tag=icer.knightsword] aj.id at @s run function icer:knight_sword/ability/damage
tag @s remove icer.knightsword
#讓與該玩家綁定的aj實體造成傷害

scoreboard players add @s aj.knight_sword_left_click.frame 1
#強制讓動畫跳過一幀避免指令被重複執行