particle portal ~ ~1 ~ 1 1 1 0 100
summon husk ~ ~ ~ {Tags:["light_green","light_green.mob","light_green.stone_stick","light_green.new.stone_stick"],NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],equipment:{head:{id:netherite_helmet,components:{"item_model":"light_green:stone_stick",equippable:{slot:head}}}},Silent:true,drop_chances:{head:0},DeathLootTable:""}
$scoreboard players set @n[tag=light_green.new.stone_stick] light_green.mob.ai $(number)
execute if score @s light_green.mob.ai matches 1 run scoreboard players set @n[tag=light_green.new.stone_stick] light_green.main.math -98
execute if score @s light_green.mob.ai matches 2 run scoreboard players set @n[tag=light_green.new.stone_stick] light_green.main.math -56
execute if score @s light_green.mob.ai matches 3 run scoreboard players set @n[tag=light_green.new.stone_stick] light_green.main.math -14
execute if score @s light_green.mob.ai matches 4 run scoreboard players set @n[tag=light_green.new.stone_stick] light_green.main.math 31
scoreboard players set @n[tag=light_green.new.stone_stick] light_green.team 1
tag @n[tag=light_green.new.stone_stick] remove light_green.new.stone_stick