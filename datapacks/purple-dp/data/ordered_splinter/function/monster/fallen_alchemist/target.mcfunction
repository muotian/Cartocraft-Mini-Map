tp @s ~ ~ ~ ~ ~
scoreboard players set @s wool_purple.mob.exist 1
execute store result score #fallen_alchemist_ability_mannequin wool_purple.mob.id if entity @s[tag=wool_purple.alchemist_ability_mannequin]
execute if score #fallen_alchemist_hurt wool_purple.mob.id matches 1.. run damage @s 0.0000001 out_of_world
execute if score #fallen_alchemist_ability wool_purple.mob.id matches 1.. unless score #fallen_alchemist_ability_mannequin wool_purple.mob.id matches 1.. run effect give @s invisibility infinite 0 true
execute if score #fallen_alchemist_ability wool_purple.mob.id matches 1.. unless score #fallen_alchemist_ability_mannequin wool_purple.mob.id matches 1.. run item modify entity @s weapon.mainhand {function:"set_components",components:{item_model:"air"}}
execute if score #fallen_alchemist_ability wool_purple.mob.id matches 1.. unless score #fallen_alchemist_ability_mannequin wool_purple.mob.id matches 1.. run tag @s add wool_purple.alchemist_ability_mannequin
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if score #fallen_alchemist_ability_mannequin wool_purple.mob.id matches 1.. run effect clear @s invisibility
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if score #fallen_alchemist_ability_mannequin wool_purple.mob.id matches 1.. run item modify entity @s weapon.mainhand {function:"set_components",components:{item_model:"wool_purple:reverend_sceptre_item"}}
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if score #fallen_alchemist_ability_mannequin wool_purple.mob.id matches 1.. run tag @s remove wool_purple.alchemist_ability_mannequin
effect clear @s poison
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if entity @n[tag=wool_purple.target,distance=..5] run scoreboard players add @s wool_purple.monster_attack 1
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if score @s wool_purple.monster_attack matches 80..100 at @s anchored feet if entity @n[tag=wool_purple.target,distance=..5] run particle dust{color:[0.122,0.871,0.196],scale:1} ^-0.4 ^0.92 ^0.9 0.1 0.1 0.1 0 1 force
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if score @s wool_purple.monster_attack matches 100 at @s anchored feet if entity @n[tag=wool_purple.target,distance=..5] positioned ^-0.4 ^1.5 ^0.9 if predicate ordered_splinter:50percentage run function ordered_splinter:monster/potion/summon
execute unless score #fallen_alchemist_ability wool_purple.mob.id matches 1.. if score @s wool_purple.monster_attack matches 100 run scoreboard players set @s wool_purple.monster_attack 0