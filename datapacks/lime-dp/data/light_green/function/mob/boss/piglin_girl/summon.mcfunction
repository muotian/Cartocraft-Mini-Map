function light_green:mob/boss/piglin_girl/kill
summon piglin_brute ~ ~ ~ {IsImmuneToZombification:true,Health:1024,Tags:["light_green","light_green.mob","light_green.boss","light_green.boss.piglin_girl","light_green.new.mob"],attributes:[{id:scale,base:1.25},{id:max_health,base:1024},{id:"knockback_resistance",base:1},{id:"attack_damage",base:0},{id:"follow_range",base:60},{id:"movement_speed",base:0.3}],Silent:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}],DeathLootTable:"",CanPickUpLoot:false,PersistenceRequired:true,CustomName:{"translate":"light_green:piglin_girl"}}
execute rotated 0 0 run function animated_java:piglin_girl/summon {args:{}}
execute rotated 0 0 run function animated_java:piglin_girl_head/summon {args:{}}
ride @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] mount @n[tag=aj.piglin_girl.locator.head_cheak]
scoreboard players set @n[tag=light_green.new.mob] light_green.team 1
scoreboard players set @n[tag=light_green.new.mob] light_green.custom.health 300
scoreboard players set $piglin_girl_weapon light_green.main.math 1
scoreboard players reset $piglin_girl_sprint_axe light_green.main.math
scoreboard players reset @n[tag=light_green.new.mob] light_green.mob.ai
scoreboard players set $piglin_girl_level light_green.main.math 1
scoreboard players reset $piglin_girl_sprint light_green.main.math
scoreboard players reset $piglin_girl_dagger_target light_green.main.math
scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
scoreboard players reset $piglin_girl_dagger_hit light_green.main.math
scoreboard players reset $piglin_girl_dagger_throw light_green.main.math
scoreboard players reset $piglin_girl_skill4 light_green.main.math
scoreboard players set $piglin_girl_skill2 light_green.main.math 0
scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:double_axe"]
data modify entity @n[tag=light_green.r_weapon,type=item_display] glow_color_override set value 16777215
item replace entity @n[tag=light_green.l_weapon] container.0 with stick[item_model="light_green:double_axe"]
execute as @n[tag=aj.piglin_girl.root,type=item_display] run function animated_java:piglin_girl/animations/axe_idle/play
execute as @n[tag=aj.piglin_girl.root,type=item_display] run function animated_java:piglin_girl/variants/heavy/apply
execute as @n[tag=aj.piglin_girl_head.root,type=item_display] run function animated_java:piglin_girl_head/animations/nothing/play
scoreboard players reset @e light_green.agony
data modify entity @n[tag=aj.piglin_girl.locator.head_cheak] teleport_duration set value 1
function light_green:mob/boss/piglin_girl/start_health/0
tag @n[tag=light_green.new.mob] remove light_green.new.mob