summon zombie ~ ~ ~ {Tags:[wool_purple.boss_mainbody],Health:1024,IsBaby:0b,DeathLootTable:"ordered_splinter:null",UUID:[I;2577,0,0,1],attributes:[{id:attack_damage,base:0},{id:max_health,base:1024},{id:movement_speed,base:0.2},{id:scale,base:2},{id:"knockback_resistance",base:1}],active_effects:[{id:invisibility,duration:-1,amplifier:1,show_particles:0b}],PersistenceRequired:1b,Silent:1b,CustomName:{translate: "boss.archdemon","color": "#CF0000"}}
function animated_java:archdemon/summon {args:1}
execute as @e[tag=wool_purple.new_mob] run scoreboard players set @s wool_purple.boss_custom_hp 750
execute as @e[tag=wool_purple.new_mob] run tag @s remove wool_purple.new_mob
kill @s