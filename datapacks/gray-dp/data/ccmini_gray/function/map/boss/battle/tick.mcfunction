#改變bossbar
execute store result bossbar minecraft:gray.boss.hp_display value run scoreboard players get $hp gray.boss.data


#戰鬥人數
function ccmini_gray:map/boss/battle/player_amount

#丟失目標重製冷卻+冷卻計算
execute on target run tag @s add gray.boss_target
execute unless entity @e[tag=gray.boss_target,limit=1] unless score $attack.cd gray.boss.data matches -1 run scoreboard players set $attack.cd gray.boss.data 50
execute on target if score $attack.cd gray.boss.data matches 1.. run scoreboard players remove $attack.cd gray.boss.data 1

#boss掛掉
execute if score $hp gray.boss.data matches ..0 run function ccmini_gray:map/boss/battle/death

#受到傷害計算
execute store result score $hitbox_hp gray.boss.data run data get entity @s Health
scoreboard players set $injury_amount gray.boss.data 1024
scoreboard players operation $injury_amount gray.boss.data -= $hitbox_hp gray.boss.data
scoreboard players operation $hp gray.boss.data -= $injury_amount gray.boss.data
execute if score $hp gray.boss.data matches ..-1 run scoreboard players set $hp gray.boss.data 0
execute if score $injury_amount gray.boss.data matches 1.. run effect give @s instant_damage 1 250 true


#防船
execute on vehicle on passengers run tag @s add gray.boss.riding
execute if entity @s[tag=gray.boss.riding] run tp ~ ~ ~


#display tp
execute unless entity @e[tag=gray.boss_target] as @e[type=item_display,tag=aj.gray_battle_boss_head.root] run rotate @s ~ ~
execute unless entity @e[tag=gray.boss_target] as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run rotate @s ~ 0
execute unless entity @e[tag=gray.boss_target] as @e[type=item_display,tag=aj.gray_battle_boss_feet.root] run rotate @s ~ 0
execute unless entity @e[tag=gray.boss_target] as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root,tag=!gray.boss.battle.greatsword.throw] run rotate @s ~ 0

execute unless entity @s[tag=gray.boss.riding] as @e[type=item_display,tag=aj.gray_battle_boss_head.root] positioned ~ ~1.7 ~ run tp @s ~ ~ ~
execute unless entity @s[tag=gray.boss.riding] as @e[type=item_display,tag=aj.gray_battle_boss_body.root] run tp @s ~ ~ ~
execute unless entity @s[tag=gray.boss.riding] as @e[type=item_display,tag=aj.gray_battle_boss_feet.root] run tp @s ~ ~ ~
execute unless entity @s[tag=gray.boss.riding] as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root,tag=!gray.boss.battle.greatsword.throw] run tp @s ~ ~ ~

execute as @e[type=item_display,tag=aj.gray_battle_boss_head.root] at @s facing entity @e[tag=gray.boss_target,limit=1] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^8 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
execute as @e[type=item_display,tag=aj.gray_battle_boss_body.root] at @s rotated as @e[type=parched,tag=gray.boss.hitbox] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0
execute as @e[type=item_display,tag=aj.gray_battle_boss_feet.root] at @s rotated as @e[type=parched,tag=gray.boss.hitbox] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0
execute as @e[type=item_display,tag=aj.gray_battle_boss_weapon.root] at @s rotated as @e[type=parched,tag=gray.boss.hitbox,tag=!gray.boss.battle.greatsword.throw] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0


#近戰模式
execute if score $attack_mode gray.boss.data matches 1 run function ccmini_gray:map/boss/battle/melee
#遠程模式
execute if score $attack_mode gray.boss.data matches 2 run function ccmini_gray:map/boss/battle/ranged

#腳步聲
execute if score $step_cd gray.boss.data matches 1.. run scoreboard players remove $step_cd gray.boss.data 1
execute unless score $step_cd gray.boss.data matches 1.. if predicate ccmini_gray:boss_move unless block ~ ~-0.1 ~ #ccmini_gray:transparent run function ccmini_gray:map/boss/battle/step


#無人時stop
execute unless score $player_boss_battle_amount gray.boss.data matches 1.. run function ccmini_gray:map/boss/battle/force_stop


#移除標籤
execute on target run tag @s remove gray.boss_target
tag @s remove gray.boss.riding