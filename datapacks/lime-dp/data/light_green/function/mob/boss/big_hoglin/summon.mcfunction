function light_green:mob/boss/big_hoglin/kill
summon ravager ~ ~ ~ {Health:1024,Tags:["light_green","light_green.mob","light_green.boss","light_green.boss.big_hoglin","light_green.new.mob"],attributes:[{id:scale,base:1.25},{id:max_health,base:1024},{id:"knockback_resistance",base:1},{id:"attack_damage",base:0},{id:"follow_range",base:60}],Silent:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}],DeathLootTable:"",CanPickUpLoot:false,PersistenceRequired:true,CustomName:{"translate":"light_green:big_hoglin"}}
execute rotated 0 0 run function animated_java:big_hoglin/summon {args:{}}
execute rotated 0 0 run function animated_java:big_hoglin_head/summon {args:{}}
scoreboard players set @n[tag=light_green.new.mob] light_green.team 1
scoreboard players set @n[tag=light_green.new.mob] light_green.custom.health 300
function light_green:mob/boss/big_hoglin/start_health/0
scoreboard players set @n[tag=light_green.new.mob] light_green.boss.music 7000
scoreboard players set $big_hoglin.summon light_green.main.math 1
scoreboard players set $hoglin_dirt_armor light_green.main.math 0
scoreboard players set $hoglin_have_dirt light_green.main.math 0
scoreboard players reset @n[tag=light_green.new.mob] light_green.mob.ai
execute as @n[tag=aj.big_hoglin.root,type=item_display] run function animated_java:big_hoglin/animations/nothing/play
execute as @n[tag=aj.big_hoglin_head.root,type=item_display] run function animated_java:big_hoglin_head/animations/nothing/play
scoreboard players set $hoglin_summon light_green.main.math 10
tag @n[tag=light_green.new.mob] remove light_green.new.mob
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-big_hoglin-1 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
scoreboard players reset $hoglin_attack light_green.main.math
scoreboard players reset $hoglin_roar light_green.main.math
scoreboard players reset $hoglin_rush light_green.main.math
scoreboard players reset $hoglin_stun light_green.main.math