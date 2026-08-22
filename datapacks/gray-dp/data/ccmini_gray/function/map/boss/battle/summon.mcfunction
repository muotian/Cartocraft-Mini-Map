#hitbox
summon parched ~ ~ ~ {Tags:[gray.boss.hitbox,gray.uncontrollable],CustomName:{translate:"gray.message.boss_title"},attributes:[{id:scale,base:1.25},{id:max_health,base:1024},{id:attack_damage,base:0},{id:follow_range,base:64},{id:knockback_resistance,base:0.5}],Silent:true,DeathLootTable:"ccmini_gray:none",Health:1024,active_effects:[{id:invisibility,duration:-1,show_particles:false}],CustomNameVisible:false,PersistenceRequired:true}
execute as @e[type=parched,tag=gray.boss.hitbox,limit=1] run rotate @s 90 0
execute as @e[type=parched,tag=gray.boss.hitbox,limit=1] run function ccmini_gray:map/boss/battle/switch_ranged
#display
function animated_java:gray_battle_boss_head/summon {args:{animation:"battle_spawn",start_animation:true}}
function animated_java:gray_battle_boss_body/summon {args:{animation:"battle_walk",start_animation:true}}
function animated_java:gray_battle_boss_feet/summon {args:{animation:"battle_ranged_walk",start_animation:true}}
function animated_java:gray_battle_boss_weapon/summon {args:{animation:"battle_spawn",start_animation:true}}