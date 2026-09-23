summon piglin ~ ~ ~ {IsImmuneToZombification:true,Tags:["light_green","light_green.piglin_shield","light_green.mob","light_green.new_mob"],drop_chances:{mainhand:0,offhand:0,head:0,chest:0},\
equipment:{mainhand:{id:shield,components:\
{kinetic_weapon:{contact_cooldown_ticks:0,damage_conditions:{max_duration_ticks:999999999,min_relative_speed:0,min_speed:0},\
knockback_conditions:{max_duration_ticks:999999999,min_relative_speed:0,min_speed:0},\
dismount_conditions:{max_duration_ticks:999999999,min_relative_speed:0,min_speed:0},damage_multiplier:0.35,hit_sound:"item.shield.block"}\
,attack_range:{hitbox_margin:0.3,min_reach:0,max_reach:0.5,mob_factor:2},use_effects:{can_sprint:false,speed_multiplier:0},use_cooldown:{seconds:10},banner_patterns:[{color:black,pattern:bricks}],base_color:white,enchantments:{"light_green:shield_piglin":1,"light_green:shield_piglin2":1},enchantment_glint_override:false}},\
head:{id:player_head,components:{profile:{id:[I;2080793942,-524468218,-1541115779,1949756395],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFlNGQwYTM3YTgwNDc5Mjk4ZTJlMTIwYThhNTYwNzAzZDMzZjY4MGZhNmJiMjRjNzM3ZjhjZDg0MGMwYzIyZiJ9fX0="}]}}},\
chest:{id:iron_chestplate,components:{equippable:{slot:chest,asset_id:"light_green:black_stone"}}}}\
,attributes:[{id:max_health,base:5},{id:"attack_damage",base:0},{id:follow_range,base:30}],DeathLootTable:"light_green:piglin",CustomName:{translate:"light_green:piglin_shield"}}
scoreboard players set @n[tag=light_green.new_mob] light_green.team 1
team join light_green.piglin @n[tag=light_green.new_mob]
tag @n[tag=light_green.new_mob] remove light_green.new_mob