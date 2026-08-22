# Hold 
tag @s add hold_pink_magic_staff

#
#function pink:mana_bar

# Look at skill slot

# Item
execute unless data entity @s SelectedItem.components."minecraft:custom_data".pink_skill_2_id if predicate pink:can_rc run item modify entity @s weapon.mainhand pink:no_rc
execute unless data entity @s SelectedItem.components."minecraft:custom_data".pink_skill_3_id if predicate pink:can_rc run item modify entity @s weapon.mainhand pink:no_rc

execute if data entity @s SelectedItem.components."minecraft:custom_data".pink_skill_2_id unless predicate pink:shift run item modify entity @s weapon.mainhand pink:can_rc
execute if data entity @s SelectedItem.components."minecraft:custom_data".pink_skill_3_id if predicate pink:shift run item modify entity @s weapon.mainhand pink:can_rc



# Mana
scoreboard players operation $temp pink.mana_u = @s pink.mana_u
execute store result score @s pink.mana run scoreboard players operation $temp pink.mana_u += @s pink.mana_v
scoreboard players set @s[scores={pink.mana_u=1..,pink.mana_v=1..,pink.mana=8..}] pink.mana_reduce.8mana 10

# Mana U
scoreboard players operation $temp pink.mana_u_reply = @s pink.mana_u_reply 
scoreboard players operation $temp pink.mana_u_reply -= @s pink.mana_reduce.8mana
scoreboard players operation $temp pink.mana_u_reply -= @s pink.mana_reduce.white_skill


scoreboard players add @s[scores={pink.mana_u=..7}] pink.mana_u_tick 1
execute if score @s pink.mana_u_tick >= $temp pink.mana_u_reply run function pink:mana_u_reply

# No mana u
tag @s[scores={pink.mana_u=..0},tag=!pink_no_mana1] add pink_no_mana1
tag @s[scores={pink.mana_u=1..},tag=pink_no_mana1] remove pink_no_mana1

execute unless items entity @s weapon.mainhand *[custom_data~{no_skill:1b}] if items entity @s[tag=pink_no_mana1] weapon.mainhand *[minecraft:attack_range={ "max_reach": 13,"hitbox_margin": 0.5}] run item modify entity @s weapon.mainhand pink:range_remove_mana
execute unless items entity @s weapon.mainhand *[custom_data~{no_skill:1b}] if items entity @s[tag=!pink_no_mana1] weapon.mainhand *[!minecraft:attack_range={ "max_reach": 13,"hitbox_margin": 0.5},custom_data~{mana:1b}] run item modify entity @s weapon.mainhand pink:range_mana

# Mana V

scoreboard players add @s[scores={pink.mana_v=..7}] pink.mana_v_tick 1
execute if score @s pink.mana_v_tick >= @s pink.mana_v_reply run function pink:mana_v_reply

#
scoreboard players set * pink.mana_reduce.8mana 0


# Mana bar
data modify storage pink:mana_bar speed set value 1
execute if score @s pink.mana matches 8.. run data modify storage pink:mana_bar speed set value 2

function pink:mana_bar/mana_bar with storage pink:mana_bar {}

# Black
tag @s[scores={pink.black.strengthen_attack=1..},tag=!pink_strengthen_attack] add pink_strengthen_attack
tag @s[scores={pink.black.strengthen_attack=..0},tag=pink_strengthen_attack] remove pink_strengthen_attack

# Shift
execute unless items entity @s weapon.mainhand *[custom_data~{no_skill:1b}] if predicate pink:shift if items entity @s weapon.mainhand *[minecraft:attack_range={ "max_reach": 13,"hitbox_margin": 0.5},custom_data~{pink_skill_1_id:3}] run item modify entity @s weapon.mainhand pink:range_remove_shift
execute unless items entity @s weapon.mainhand *[custom_data~{no_skill:1b}] unless predicate pink:shift if items entity @s weapon.mainhand *[!minecraft:attack_range={ "max_reach": 13,"hitbox_margin": 0.5},custom_data~{shift:1b}] run item modify entity @s weapon.mainhand pink:range_shift

# Rc


#Skill----------------------------------

# Star Skill1
execute at @s[scores={pink.star.skill1.card_count=1..}] run function pink:skills_2/star/tp

scoreboard players operation @s pink.star.skill1.temp = @s pink.star.skill1.use
scoreboard players set @s pink.star.skill1.use 0