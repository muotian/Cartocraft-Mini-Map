# New Origin
execute unless entity a7-0-0-0-0 positioned -145.0 39.0 708.0 if loaded ~ ~ ~ run summon minecraft:marker ~ ~ ~ {Tags:["pink.new_origin"],UUID:uuid(a7-0-0-0-0)}

# Player
execute as @a if items entity @s weapon.mainhand *[custom_data~{pink_magic_staff:1b}] at @s run function pink:as_player_mainhand
execute as @a if items entity @s weapon.offhand *[custom_data~{pink_magic_staff:1b}] at @s run function pink:as_player_offhand


execute as @a[tag=hold_pink_magic_staff] unless items entity @s weapon.mainhand *[custom_data~{pink_magic_staff:1b}] run function pink:off_hand


execute as @a at @s run function pink:as_a

# Skill Slot
execute as @e[tag=pink_skill_slot_marker,type=marker] at @s run function pink:skill_slot/skill_slot_tick

execute as @e[tag=pink_skill_slot_1,type=item] at @s run tp @n[tag=pink_skill_slot_1_interaction,type=interaction]
execute as @e[tag=pink_skill_slot_2,type=item] at @s run tp @n[tag=pink_skill_slot_2_interaction,type=interaction]
execute as @e[tag=pink_skill_slot_3,type=item] at @s run tp @n[tag=pink_skill_slot_3_interaction,type=interaction]


# Star marker
execute as @e[tag=pink_star_marker,type=text_display] unless predicate pink:star/marker_ride run kill @s

execute as @e[tag=pink_star_damage_motion,predicate=pink:onground] run kill @s
execute as @e[tag=pink_star_damage_text,predicate=!pink:star/marker_ride] run kill @s
clear @a barrier[custom_data~{pink_damage_text:1b}]
# Star skill
execute as @e[tag=pink.star2.1] at @s run function pink:skills_2/star/aj_tick
execute as @e[tag=pink.star2.2] at @s run function pink:skills_2/star/shoot_tick

execute as @e[tag=pink.skill1.text] run function pink:animation/alpha {tick:20}
execute as @e[tag=pink.skill3.text2,tag=_] run function pink:animation/alpha {tick:15}
execute as @e[tag=pink.skill3.text1,tag=_] run function pink:animation/alpha {tick:8}
execute as @e[tag=pink.skill3.text_] run function pink:animation/tick {tick:3,id:2}
execute as @e[tag=pink.skill3.text_] run function pink:animation/alpha {tick:8}
execute as @e[tag=pink.black.skill2.text,tag=_] run function pink:animation/alpha {tick:13}

# Black attack
tag @a remove black_attack

# Black skill
execute as @e[tag=pink.black2.1] at @s run function pink:skills_2/black/tp

# White 1
execute as @e[tag=pink_white_marker] run function pink:skills_1/white/as_marker

# White 2
execute as @e[tag=pink.white.skill3.marker] at @s run function pink:skills_3/white/marker_tick

execute as @e[tag=pink.white2.1] at @s run function pink:skills_2/white/tp

# Black hole
execute as @e[tag=pink.bh1] at @s run function pink:skills_3/black_hole/damage
execute as @e[tag=pink.bh.dust] at @s run function pink:skills_3/black_hole/dust_tp with entity @s data


# npc target

######################## MOB ########################

# tp bug
execute as @e[tag=pink.tp_bug,tag=pink_mobs] at @s run function pink:monster/tp_bug/tick
function pink:monster/summon_bug/tick

# guardian
execute as @e[tag=pink.guardian,tag=pink_mobs] at @s run function pink:monster/guardian/tick

# devour
execute as @e[tag=pink.devour,tag=pink_mobs] at @s run function pink:monster/devour/tick

# end_crystal
#execute as @e[tag=pink.end_crystal] at @s run function pink:monster/end_crystal/tick
scoreboard players add @e[type=end_crystal,tag=pink.end_crystal.crystal] pink.monster.end_crystal.life 1
kill @e[tag=pink.end_crystal.crystal,type=end_crystal,scores={pink.monster.end_crystal.life=160..}]

# orderless
execute as @e[tag=pink.orderless] at @s run function pink:monster/orderless/tick

# orderless
execute as @e[tag=pink.snake] at @s run function pink:monster/snake/tp

# gravity
execute as @e[tag=pink.gravity] at @s run function pink:monster/gravity/tick
execute as @a[tag=pink.abnormal_gravity] at @s run function pink:monster/gravity/abnormal_gravity

# phantom
execute as @e[tag=pink.phantom] at @s run function pink:monster/phantom/glow
execute as @e[tag=pink.phantom2] at @s run function pink:monster/phantom/glow2

# skeleton
execute as @e[tag=pink.skeleton] at @s run function pink:monster/skeleton/glow

# clone
execute as @e[tag=pink.clone] at @s run function pink:monster/clone/tick
execute as @e[tag=pink.clone2] at @s run function pink:monster/clone/tick2

#death
execute as @e[tag=pink.death] at @s run function pink:monster/death/tick
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pink_death:1b}}}}] at @s run function pink:monster/death/die
execute as @e[tag=pink.death.die_marker] at @s run function pink:monster/death/die_marker

# glass
execute as @e[tag=pink_mobs.glass_vex] at @s run function pink:monster/glass/tick

# shullker
function pink:monster/shulker/tick

## S 
execute as @e[tag=pink.monster.b,type=armor_stand] at @s run function pink:monster/b


######################## NPC ########################
execute as @e[tag=pink_npc] at @s run function pink:npc/tick

#execute as @e[tag=pink.npc.train.leave_marker] at @s as @p[distance=..3] run function pink:npc/train/leave_tp


######################## ITEM ########################
execute as @e[tag=pink.wolf_pieces_wolf] at @s run function pink:item/wolf_pieces/wolf_tick

