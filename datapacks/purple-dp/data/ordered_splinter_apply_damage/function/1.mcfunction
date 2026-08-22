# 執行者是玩家
tag @s add wool_purple.attacker
$execute as @n[tag=wool_purple.attack_point] at @s run tp @s ~-$(dis_half) ~-$(dis_half) ~-$(dis_half)
$execute at @n[tag=wool_purple.attack_point] as @e[type=#mobs,dx=$(dis),dy=$(dis),dz=$(dis),tag=!wool_purple.attacker,nbt=!{Invulnerable:1b}] run tag @s add wool_purple.damage.hit
$execute as @e[tag=wool_purple.damage.hit] run damage @s $(damage) ordered_splinter_apply_damage:common by @n[tag=wool_purple.attacker]
# 怪物閃紅
execute as @e[tag=wool_purple.damage.hit] at @s if entity @s[tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
# 以賽亞特技
execute as @e[tag=wool_purple.damage.hit] if data entity @s {HurtTime:10s} on attacker if entity @s[tag=wool_purple.isaiah_ability_1] if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run effect give @s instant_health 1 1 true
execute as @e[tag=wool_purple.damage.hit,tag=!wool_purple.have_amethyst] at @s if data entity @s {HurtTime:10s} on attacker if entity @s[tag=wool_purple.isaiah_ability_2] if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] as @n[tag=wool_purple.damage.hit,tag=!wool_purple.have_amethyst] run function ordered_splinter:sword/isaiah/summon_display
# 斷魂裁決特質
scoreboard players set mob.hp.full.heath wool_purple.mob.hp.percentage 0
scoreboard players set mob.hp.percentage wool_purple.mob.hp.percentage 0
execute as @n[tag=wool_purple.damage.hit] at @s if items entity @p[tag=wool_purple.attacker] weapon.mainhand *[custom_data~{soulrend: 1b}] store result score mob.hp.percentage wool_purple.mob.hp.percentage run data get entity @s Health 1000
execute as @n[tag=wool_purple.damage.hit] at @s if items entity @p[tag=wool_purple.attacker] weapon.mainhand *[custom_data~{soulrend: 1b}] store result score mob.hp.full.heath wool_purple.mob.hp.percentage run attribute @s max_health get 10
scoreboard players operation mob.hp.percentage wool_purple.mob.hp.percentage /= mob.hp.full.heath wool_purple.mob.hp.percentage
execute if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run attribute @s minecraft:attack_damage modifier add soulrend 0.5 add_multiplied_base
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run function ordered_splinter:particle/soul_rend
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run playsound minecraft:entity.wither.break_block player @s ~ ~ ~ 2 0.5
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 2 1
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run title @s times .25s 1.5s .25s
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run title @s title ""
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run title @s subtitle {"atlas":"items","sprite":"wool_purple:item/so_ul",shadow_color:0}
execute if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run tag @s add wool_purple.soulrend_user
execute if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] unless score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run tag @s remove wool_purple.soulrend_user
execute if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] unless score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run attribute @s minecraft:attack_damage modifier remove soulrend
execute if entity @n[tag=wool_purple.damage.hit,tag=!wool_purple.effect] if items entity @s weapon.mainhand *[custom_data~{soulrend: 1b}] if score mob.hp.percentage wool_purple.mob.hp.percentage matches 1..80 run tag @n[tag=wool_purple.damage.hit] add wool_purple.effect
# 疾焰長劍特質
execute as @e[tag=wool_purple.damage.hit] run data modify entity @s Fire set from storage damage:data fire_aspect
# 絕命特質
execute as @e[tag=wool_purple.damage.hit] if data entity @s {HurtTime:10s} on attacker if items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] run function ordered_splinter:sword/blade_of_finality/start
execute if items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] run scoreboard players add @s wool_purple.blade_of_finality 1
# 千面奇點特質
execute if items entity @s weapon.mainhand *[custom_data~{singularity_of_thousandfaces: 1b}] as @e[tag=wool_purple.damage.hit,tag=!wool_purple.singularity_of_thousandfaces_target,type=!player] run tag @s add wool_purple.singularity_of_thousandfaces_target
# 落獄輕呂特質
execute as @e[tag=wool_purple.damage.hit] if data entity @s {HurtTime:10s} on attacker if items entity @s weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] as @e[tag=wool_purple.damage.hit] run tag @s add wool_purple.naraku_fallen_shortsword_target
execute if items entity @s weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] run tag @s add wool_purple.naraku_fallen_shortsword_user
execute unless items entity @s weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] run tag @s remove wool_purple.naraku_fallen_shortsword_user
# final
tag @e[tag=wool_purple.damage.hit] remove wool_purple.damage.hit
kill @n[tag=wool_purple.attack_point]
tag @s remove wool_purple.attacker