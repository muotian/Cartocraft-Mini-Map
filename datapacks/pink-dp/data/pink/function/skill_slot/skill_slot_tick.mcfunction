#
scoreboard players operation $temp pink.id = @s pink.id
execute as @a if items entity @s weapon.offhand *[custom_data~{pink_magic_staff:1b}] if score @s pink.id = $temp pink.id run tag @s add this_
execute store result score $this pink.s1.id1 run data get entity @p[tag=this_] equipment.offhand.components."minecraft:custom_data".id

execute unless entity @p[tag=this_,distance=..1] run function pink:skill_slot/skill_slot_remove
execute unless score @p[tag=this_] pink.s1.id1 = $this pink.s1.id1 run function pink:skill_slot/skill_slot_remove


tag @a remove this_

# Interaction
execute as @e[tag=skill_slot_interaction] at @s run function pink:skill_slot/interaction_tick

