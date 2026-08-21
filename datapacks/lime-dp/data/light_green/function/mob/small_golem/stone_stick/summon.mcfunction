particle portal ~ ~1 ~ 1 1 1 0 100
summon husk ~ ~ ~ {PersistenceRequired:true,Tags:["light_green","light_green.mob","light_green.stone_stick","light_green.new.stone_stick","light_green.from_small"],NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],equipment:{head:{id:netherite_helmet,components:{"item_model":"light_green:stone_stick",equippable:{slot:head}}}},Silent:true,drop_chances:{head:0},DeathLootTable:""}
scoreboard players operation @n[tag=light_green.new.stone_stick] light_green.golem_id = @s light_green.golem_id
scoreboard players set @n[tag=light_green.new.stone_stick] light_green.team 1
$execute at @s as @n[tag=light_green.new.stone_stick] run spreadplayers ~ ~ 0 1 under $(y) true @s
tag @n[tag=light_green.new.stone_stick] remove light_green.new.stone_stick