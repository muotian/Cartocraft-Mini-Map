execute as @a[tag=icer.holding_reverend_sceptre] at @s unless items entity @s weapon.mainhand bread[custom_data~{icer.reverend_sceptre:1b}] run function icer:reverend_sceptre/remove_sceptre
execute as @a[tag=icer.holding_knightsword] at @s unless items entity @s weapon.mainhand bread[custom_data~{icer.knightsword:1b}] run function icer:knight_sword/remove_sword
execute as @a[tag=icer.holding_scourge_staff] at @s unless items entity @s weapon.mainhand bread[custom_data~{icer.scourge_staff:1b}] run function icer:scourge_staff/remove_sword
#當玩家手上沒有拿著該武器時，把該武器的aj實體刪除

execute as @a[tag=!icer.holding_reverend_sceptre] at @s if items entity @s weapon.mainhand bread[custom_data~{icer.reverend_sceptre:1b}] run function icer:reverend_sceptre/summon_sceptre
execute as @a[tag=!icer.holding_knightsword] at @s if items entity @s weapon.mainhand bread[custom_data~{icer.knightsword:1b}] run function icer:knight_sword/summon_sword
execute as @a[tag=!icer.holding_scourge_staff] at @s if items entity @s weapon.mainhand bread[custom_data~{icer.scourge_staff:1b}] run function icer:scourge_staff/summon_sword
#當玩家手上持有該武器時，召喚一個該武器的aj實體，並給予一個正在拿取aj實體的標籤

execute as @a[tag=icer.holding_reverend_sceptre] at @s anchored eyes run function icer:reverend_sceptre/tp_to_player
execute as @a[tag=icer.holding_knightsword] at @s anchored eyes run function icer:knight_sword/tp_to_player
execute as @a[tag=icer.holding_scourge_staff] at @s anchored eyes run function icer:scourge_staff/tp_to_player
#將aj實體傳送至玩家身旁

execute as @e[tag=aj.knightsword.root,type=item_display] at @s if score @s aj.knight_sword_left_click.frame matches 11 run function icer:knight_sword/ability/left_click_damage
execute as @e[tag=aj.reverend_sceptre.root,type=item_display] at @s if score @s aj.reverend_sceptre_left_click.frame matches 20 run function icer:reverend_sceptre/ability/left_click_damage
execute as @e[tag=aj.scourge_staff.root,type=item_display] at @s if score @s aj.scourge_staff_left_click.frame matches 20 run function icer:scourge_staff/ability/left_ability
#左鍵攻擊的動畫跑到某一tick時執行函數

scoreboard players add @a[tag=icer.using_knightsword,scores={icer.using_knightsword=2..}] icer.using_knightsword_lasttick 1
scoreboard players add @a[tag=icer.using_reverend_sceptre,scores={icer.using_reverend_sceptre=2..}] icer.using_reverend_sceptre_lasttick 1
scoreboard players add @a[tag=icer.using_scourge_staff,scores={icer.using_scourge_staff=2..}] icer.using_scourge_staff_lasttick 1
#紀錄玩家右鍵技能蓄力的前一個tick是第幾個tick(玩家在按住右鍵時tick數會比蓄力時長少一個tick，放開右鍵後tick數會等於蓄力時長)

execute as @a[tag=icer.using_reverend_sceptre] if score @s icer.using_reverend_sceptre = @s icer.using_reverend_sceptre_lasttick run function icer:reverend_sceptre/ability/stop_using_reverend_sceptre
execute as @a[tag=icer.using_knightsword] if score @s icer.using_knightsword = @s icer.using_knightsword_lasttick run function icer:knight_sword/ability/stop_using_knightsword
execute as @a[tag=icer.using_scourge_staff] if score @s icer.using_scourge_staff = @s icer.using_scourge_staff_lasttick run function icer:scourge_staff/ability/stop_using_scourge_staff
#當蓄力的tick數相等表示玩家放開右鍵，因此執行中斷蓄力函數


execute as @e[tag=icer.reverend_sceptre.bullet,type=marker] at @s run function icer:reverend_sceptre/ability/reverend_sceptre_bullet
execute as @e[tag=icer.reverend_sceptre.raycast,type=marker] at @s run function icer:reverend_sceptre/ability/raycast_frame
execute as @e[tag=icer.scourge_staff.raycast,type=marker] at @s run function icer:scourge_staff/ability/raycast
execute as @e[tag=icer.calamity_treant.ability1.marker,type=marker] at @s run function icer:calamity_treant/ability/1/raycast_to_player
#當偵測到雷射光或光彈等標記被召喚後自動執行技能函數

execute as @e at @s if score @s icer.plague_count matches 1.. run function icer:plague/plague_frame
#當實體得到瘟疫效果時開始執行瘟疫函數

execute as @n[tag=icer.calamity_treant,type=zombie] at @s run function icer:calamity_treant/tick
#以boss為執行者和執行位置的tick函數

execute as @e[tag=aj.calamity_treant.root,type=item_display] run function icer:calamity_treant/get_hurt
#受傷時改變改變外觀顏色

execute as @a if score @s icer.plague_death matches 1.. run function icer:plague/reset_plague
#玩家在瘟疫狀態死亡時重製瘟疫效果

execute as @e[tag=icer.using_ability2,type=zombie] at @s run function icer:calamity_treant/ability/2/frame
execute as @e[tag=icer.using_ability3,type=zombie] at @s run function icer:calamity_treant/ability/3/frame
execute as @e[tag=icer.using_ability4,type=zombie] at @s run function icer:calamity_treant/ability/4/frame
#在boss獲得使用技能標籤時執行技能函數

execute as @e[tag=aj.calamity_treant.root,type=item_display] unless entity @n[tag=icer.calamity_treant] run function animated_java:calamity_treant/remove/this
#boss死亡時將aj實體移除

execute as @e[tag=icer.calamity_treant.ability4,type=endermite] at @s run rotate @s ~ 0
execute as @e[tag=icer.calamity_treant.abilitty4_left,type=endermite] at @s run tp @n[tag=icer.calamity_treant.abilitty4_blockdisplay_left.base,type=block_display] ^-0.2 ^0.1 ^-0.5 ~ 0
execute as @e[tag=icer.calamity_treant.abilitty4_right,type=endermite] at @s run tp @n[tag=icer.calamity_treant.abilitty4_blockdisplay_right.base,type=block_display] ^-0.2 ^0.1 ^-0.5 ~ 0
#將方塊展示實體傳送到終界螨上

execute as @e[tag=icer.calamity_treant.abilitty4_blockdisplay.base,type=block_display] at @s run function icer:calamity_treant/ability/4/test_endermite_death
#偵測終界螨死亡

execute as @e[tag=icer.calamity_treant.ability4,type=endermite] at @s if entity @a[distance=..1] run kill @s
#靠近玩家時終界螨自爆

execute as @e[tag=icer.smoking,type=marker] at @s run particle campfire_cosy_smoke ~ ~ ~ 0.001 5 0.001 0.01 3
#生成煙霧

execute as @e[tag=icer.mutant_rat,type=endermite] at @s run function icer:monster/mutant_rat/tp_to_endermite
#老鼠把模型傳送到自己身上

execute as @e[tag=aj.rat.root,type=item_display] at @s run function icer:monster/mutant_rat/dead
#偵測老鼠死亡

execute as @a[tag=icer.being_demon] at @s unless predicate icer:demon_trade run function icer:enchant/demon_trade/remove_tag
execute as @a[tag=icer.being_angel] at @s unless predicate icer:angel_bless run function icer:enchant/angel_bless/remove_tag
#移除玩家天使或惡魔的標籤

execute as @a[tag=!icer.being_demon] at @s if predicate icer:demon_trade run function icer:enchant/demon_trade/give_tag
execute as @a[tag=!icer.being_angel] at @s if predicate icer:angel_bless run function icer:enchant/angel_bless/give_tag
#給予玩家惡魔或天使的標籤

execute as @a[tag=icer.being_angel] at @s run function icer:enchant/angel_bless/protecting
execute as @a[tag=icer.being_demon] at @s run function icer:enchant/demon_trade/blooding
#天使或惡魔的函數

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{icer.dark:1b}}}} if data entity @s Thrower at @s run function icer:enchant/test_dark
execute as @e[tag=icer.dark.interaction] at @s run function icer:enchant/dark_remove
execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{icer.light:1b}}}} if data entity @s Thrower at @s run function icer:enchant/test_light
execute as @e[tag=icer.light.interaction] at @s run function icer:enchant/light_remove
#偵測道具被丟出以及道具被互動

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{icer.mithril_talisman:1b}}}} if data entity @s Thrower at @s run function icer:mithril_talisman/test
#偵測秘銀護符被丟出

execute as @e[tag=icer.summon_anvil] at @s unless entity @e[tag=icer.mithril_anvil,type=villager] run function icer:summon_anvil
#清掉被雷劈到的鐵砧村民

execute as @n[tag=icer.summon_mithril_golem,tag=!icer.executing_wind,tag=!icer.end_wind] at @s if entity @a[distance=..7] run function icer:mini_boss/mithril_golem/add_tag

execute as @n[tag=icer.summon_mithril_golem,tag=icer.executing_wind] at @s run function icer:mini_boss/mithril_golem/time

execute as @n[tag=icer.mithril_golem] at @s run function icer:mini_boss/mithril_golem/tick

execute as @n[tag=icer.summon_cherub,tag=!icer.executing_pyro,tag=!icer.end_pyro] at @s if entity @a[distance=..10] run function icer:mini_boss/cherub/add_tag

execute as @n[tag=icer.summon_cherub,tag=icer.executing_pyro] at @s run function icer:mini_boss/cherub/time

execute as @n[tag=icer.cherub] at @s run function icer:mini_boss/cherub/tick

execute as @e[tag=icer.portal,tag=!icer.tped] at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 2 force

execute at @e[tag=icer.drown_marker] as @a[distance=..2,tag=!icer.drowned] run function icer:drown/test

execute as @e[tag=icer.treant] at @n[tag=icer.story_interaction] run tp @s ~ ~ ~ facing entity @p[distance=..5] eyes

execute as @e[tag=icer.story_interaction] if data entity @s interaction as @n[tag=icer.treant] at @s run function icer:story/hi

execute as @a at @s if score @s icer.run_craft matches 1.. run function icer:story/craft
execute as @a at @s if score @s icer.run_talk matches 1.. run function icer:story/talk
execute as @a at @s if score @s icer.run_talk1 matches 1.. run function icer:story/talk1
execute as @a at @s if score @s icer.run_talk2 matches 1.. run function icer:story/talk2

scoreboard players enable @a icer.run_talk
scoreboard players enable @a icer.run_talk1
scoreboard players enable @a icer.run_talk2
scoreboard players enable @a icer.run_craft

execute as @e[tag=icer.portal,tag=!icer.tped] at @s if entity @a[distance=..2] as @n[tag=icer.summon_boss] at @s run function icer:calamity_treant/start_boss_fight


execute as @a at @s if items entity @s[tag=!icer.holding_heart] player.cursor *[custom_data~{heart_of_pyrowind: 1b}] run tag @s add icer.holding_heart
#當玩家滑鼠拿著心臟但沒有tag就給玩家tag

execute as @a at @s if items entity @s[tag=icer.holding_heart] player.cursor *[custom_data~{windflame_longsword: 1b}] run function icer:pyrowind/craft
#當玩家有tag且滑鼠切換到劍就執行合成函數

execute as @a at @s if entity @s[tag=icer.holding_heart] unless items entity @s player.cursor *[custom_data~{heart_of_pyrowind: 1b}] unless items entity @s player.cursor *[custom_data~{windflame_longsword: 1b}] run tag @s remove icer.holding_heart
#當玩家有tag且切換到心臟跟劍以外的物品就拿掉tag

execute as @e[type=armor_stand] at @s run function icer:spawner/summon

execute as @e[tag=icer.fly] at @s run effect give @e[distance=..2,type=!marker] levitation 1 90 true
execute as @e[tag=icer.fly] at @s run particle end_rod ~ ~ ~ 0.1 5 0.1 0.1 0 force