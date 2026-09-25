#tellraw @a {"text":"資料包載入完畢。"}
forceload add 0 0
scoreboard objectives add wool_purple.yaw dummy
scoreboard objectives add wool_purple.animation dummy
scoreboard objectives add wool_purple.mob.hp.percentage dummy
scoreboard objectives add wool_purple.naraku_fallen_shortsword dummy
scoreboard objectives add wool_purple.on_fire dummy
scoreboard objectives add wool_purple.pyro_wind_timer dummy
scoreboard objectives add wool_purple.tornado_cd dummy
scoreboard objectives add wool_purple.tornado.sec dummy
scoreboard objectives add wool_purple.kill_tornado dummy
scoreboard objectives add wool_purple.y_position dummy
scoreboard objectives add wool_purple.summon_tornado dummy
scoreboard objectives add wool_purple.gametype dummy
scoreboard objectives add wool_purple.raycast dummy
scoreboard objectives add wool_purple.blade_of_finality dummy
scoreboard objectives add wool_purple.bolt dummy
scoreboard objectives add wool_purple.singularity dummy
scoreboard objectives add wool_purple.singularity_cycle dummy
scoreboard objectives add wool_purple.comet_cd dummy
scoreboard objectives add wool_purple.comet.sec dummy
scoreboard objectives add wool_purple.carpet_cd dummy
scoreboard objectives add wool_purple.carpet.sec dummy
scoreboard objectives add wool_purple.ability_cd dummy
scoreboard objectives add wool_purple.ability.sec dummy
scoreboard objectives add wool_purple.ability.stockpile dummy
scoreboard objectives add wool_purple.kill_comet dummy
scoreboard objectives add wool_purple.kill_carpet dummy
scoreboard objectives add wool_purple.eye_ability dummy
scoreboard objectives add wool_purple.eye_ability_raycast dummy
scoreboard objectives add wool_purple.isaiah_cd.1 dummy
scoreboard objectives add wool_purple.isaiah.sec.1 dummy
scoreboard objectives add wool_purple.isaiah_duration.1 dummy
scoreboard objectives add wool_purple.isaiah_damage dummy
scoreboard objectives add wool_purple.isaiah_cd.2 dummy
scoreboard objectives add wool_purple.isaiah.sec.2 dummy
scoreboard objectives add wool_purple.display dummy
scoreboard objectives add wool_purple.kill_isaiah dummy
scoreboard objectives add wool_purple.heartbeat dummy
scoreboard objectives add wool_purple.self_ignitor dummy
scoreboard objectives add wool_purple.self_ignitor.stockpile dummy
scoreboard objectives add wool_purple.npc dummy
scoreboard objectives add wool_purple.box.id dummy
scoreboard objectives add wool_purple.kill_acid_spray dummy
scoreboard objectives add wool_purple.mob.exist dummy
team add wool_purple.item_display
team modify wool_purple.item_display color dark_purple
team add wool_purple.boss_room
team modify wool_purple.boss_room color dark_red
team add wool_purple.green
team modify wool_purple.green color dark_green
team add wool_purple.blue
team modify wool_purple.blue color blue
team add wool_purple.yellow
team modify wool_purple.yellow color yellow
team add wool_purple.monster
team modify wool_purple.monster collisionRule pushOwnTeam
scoreboard objectives add wool_purple.monster_ability dummy
scoreboard objectives add wool_purple.monster_attack dummy
scoreboard objectives add wool_purple.mob.id dummy
scoreboard objectives add wool_purple.player_damage_cd dummy
scoreboard objectives add wool_purple.red dummy
scoreboard objectives add wool_purple.use_shield minecraft.used:shield
scoreboard objectives add wool_purple.20 dummy
scoreboard players set $20 wool_purple.20 20
scoreboard objectives add wool_purple.switch.sword dummy
scoreboard players set -1 wool_purple.switch.sword -1
scoreboard objectives add wool_purple.boss_type dummy
scoreboard objectives add wool_purple.boss_animation dummy
scoreboard objectives add wool_purple.boss_move_step dummy
scoreboard objectives add wool_purple.boss_hp dummy
scoreboard objectives add wool_purple.boss_custom_hp dummy
scoreboard objectives add wool_purple.boss_hp_late dummy
scoreboard objectives add wool_purple.boss_hurttime dummy
scoreboard objectives add wool_purple.y_pos dummy
scoreboard objectives add wool_purple.ice_remove dummy
scoreboard objectives add wool_purple.ice_remove_cd dummy
scoreboard objectives add wool_purple.find_look.temp dummy
scoreboard objectives add wool_purple.find_look.const dummy
scoreboard players set $2 wool_purple.find_look.const 2
scoreboard objectives add wool_purple.is_glowing dummy

bossbar add wool_purple.boss_hp {translate: "boss.archdemon","color": "#CF0000"}
bossbar set wool_purple.boss_hp color red
bossbar set wool_purple.boss_hp style progress
bossbar set wool_purple.boss_hp max 750

schedule function ordered_splinter:load_late 5s