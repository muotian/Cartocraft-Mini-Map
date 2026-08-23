execute if items entity @s weapon.mainhand #icer:weapons if predicate icer:angel_bless run tellraw @s {"translate":"icer.dark_enchant.again","color":red,"bold":true,"italic":false}
execute if items entity @s weapon.mainhand *[custom_data~{icer.knightsword:1b}] if predicate icer:angel_bless run tellraw @s {"translate":"icer.dark_enchant.again","color":red,"bold":true,"italic":false}
#如果玩家手上的道具可附魔且已附魔則把提醒玩家已附魔

execute unless data entity @s SelectedItem run tellraw @s {"translate":"icer.dark_enchant.wrong","color":red,"bold":true,"italic":false}
execute if data entity @s SelectedItem unless items entity @s weapon.mainhand #icer:weapons unless items entity @s weapon.mainhand *[custom_data~{icer.knightsword:1b}] run tellraw @s {"translate":"icer.dark_enchant.wrong","color":red,"bold":true,"italic":false}
#如果手上道具無法附魔或手上無東西則提醒玩家需要手持武器

execute if items entity @s weapon.mainhand #icer:weapons unless predicate icer:angel_bless run function icer:enchant/add_angel_bless
execute if items entity @s weapon.mainhand *[custom_data~{icer.knightsword:1b}] unless predicate icer:angel_bless run function icer:enchant/add_angel_bless
#如果手上道具可附魔且未附魔則將道具附魔