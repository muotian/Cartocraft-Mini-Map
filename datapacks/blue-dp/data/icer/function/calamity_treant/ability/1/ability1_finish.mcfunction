tag @s remove icer.using_ability
tag @s add icer.standing
#將狀態標籤換成站立

data merge entity @s {NoAI:0b}
data merge entity @s {Invulnerable:0b}
#將boss解除定身