execute if predicate icer:angel_bless run item modify entity @s weapon.mainhand icer:enchant/remove_angel_bless
#移除掉衝突附魔

item modify entity @s weapon.mainhand icer:enchant/demon_trade
#給道具附魔

execute as @e[tag=icer.dark.has_setup] if score @s icer.dark.id = @n[tag=icer.dark.interaction.target] icer.dark_interaction.id run kill @s
kill @n[tag=icer.dark.interaction.target]
#清除掉清除道具以及互動實體

particle enchant ~ ~ ~ 1 1 1 0.1 50 force
particle explosion ~ ~ ~ 0 0 0 0.1 1 force
particle sonic_boom ~ ~ ~ 0 0 0 0.1 1 force
particle flame ~ ~ ~ 0.1 0.1 0.1 0.1 50 force
playsound entity.generic.explode ambient @p ~ ~ ~
#產生特效跟音效