scoreboard objectives add light_green.main.math dummy
scoreboard objectives add light_green.mob.ai dummy
scoreboard objectives add light_green.boss.animation dummy
scoreboard objectives add light_green.boss.attack_type dummy
scoreboard objectives add light_green.mob.health dummy
scoreboard objectives add light_green.mob.health_late dummy
scoreboard objectives add light_green.custom.health dummy
scoreboard objectives add light_green.boss.music dummy
scoreboard objectives add light_green.team dummy
scoreboard objectives add light_green.move_step dummy
scoreboard objectives add light_green.food food
scoreboard objectives add light_green.blocked dummy
scoreboard objectives add light_green.eat dummy
scoreboard objectives add light_green.eating dummy
scoreboard objectives add light_green.hurt dummy
scoreboard objectives add light_green.hurt_schedule dummy
scoreboard objectives add light_green.hurt_math dummy
scoreboard objectives add light_green.absorption dummy
scoreboard objectives add light_green.health dummy
scoreboard objectives add light_green.health_late dummy
scoreboard objectives add light_green.mod_equip dummy
scoreboard objectives add light_green.agony dummy
scoreboard objectives add light_green.break_defanse dummy
scoreboard objectives add light_green.break_defanse_time dummy
scoreboard objectives add light_green.cant_move dummy
scoreboard objectives add light_green.crack dummy
scoreboard objectives add light_green.crack_id dummy
scoreboard objectives add light_green.bullet_id dummy
scoreboard objectives add light_green.shaman_id dummy
scoreboard objectives add light_green.golem_id dummy
scoreboard objectives add light_green.player_id dummy
scoreboard objectives add light_green.piglin_girl_weapon.hit dummy
scoreboard objectives add light_green.axe_cooldown dummy
scoreboard objectives add light_green.spear_sprint dummy
scoreboard objectives add light_green.effect_storage.resistance dummy
scoreboard objectives add light_green.sprint.resistance dummy
scoreboard objectives add light_green.dagger_hit dummy
scoreboard objectives add light_green.dagger_sprint dummy
scoreboard objectives add light_green.dagger_sprint.decost dummy
scoreboard objectives add light_green.piglin_girl_dagger.hit dummy
scoreboard objectives add light_green.piglin_girl_weapon.use dummy
scoreboard objectives add light_green.dagger_storage dummy
scoreboard objectives add light_green.dagger_storage.ready_use dummy
scoreboard objectives add light_green.heal dummy
scoreboard objectives add light_green.long_heal dummy
scoreboard objectives add light_green.hurt_count dummy
scoreboard objectives add light_green.tp_door_cd dummy
scoreboard objectives add light_green.hand_cannon_cd dummy
scoreboard objectives add light_green.hand_cannon dummy
scoreboard objectives add light_green.hand_cannon_type dummy
scoreboard objectives add light_green.hand_cannon_hit dummy
scoreboard objectives add light_green.dagger_load dummy
scoreboard objectives add light_green.trader_id dummy
scoreboard objectives add light_green.npc_id dummy
scoreboard objectives add light_green.hoglin.shield dummy
scoreboard objectives add light_green.hoglin.shield.max dummy
scoreboard objectives add light_green.hoglin_swing.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add light_green.hoglin_swing.damage_real dummy
scoreboard objectives add light_green.second_life.damage minecraft.custom:minecraft.damage_resisted
scoreboard objectives add light_green.hoglin_sword.damage minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add light_green.second_life.resistance dummy
scoreboard objectives add light_green.second_life.resistance.icon dummy
scoreboard objectives add light_green.second_life.apply dummy
scoreboard objectives add light_green.second_life.resistance.time dummy
scoreboard objectives add light_green.hoglin.shield.upgrade dummy
scoreboard objectives add light_green.hoglin.shield.upgrade.keep dummy
scoreboard objectives add light_green.hoglin.shield.roar dummy
scoreboard objectives add light_green.hoglin.shield.hold dummy
scoreboard objectives add light_green.hoglin.shield.holding dummy
scoreboard objectives add light_green.hoglin.shield.cold dummy
scoreboard objectives add light_green.instant_heal.cold dummy
scoreboard objectives add light_green.adapt_bullet.summon dummy
scoreboard objectives add light_green.adapt.attacker.hit dummy
scoreboard objectives add light_green.adapt.victim.hit dummy
scoreboard objectives add light_green.adapt_bullet.equip dummy
scoreboard objectives add light_green.adapt_health dummy
scoreboard objectives add light_green.scout dummy
scoreboard objectives add light_green.hoglin_space dummy
scoreboard objectives add light_green.hoglin_time dummy
scoreboard objectives add light_green.hoglin_walk dummy
scoreboard objectives add light_green.hoglin_walk_time dummy
scoreboard objectives add light_green.hoglin_sprint dummy
scoreboard objectives add light_green.adapt_health_late dummy
scoreboard objectives add light_green.adapt_piglin_girl_weapon dummy
scoreboard objectives add light_green.piglin_girl_weapon.total dummy
scoreboard objectives add light_green.dialog dummy
scoreboard objectives add light_green.dialog.time dummy
scoreboard objectives add light_green.death deathCount


scoreboard players set $100 light_green.main.math 100
scoreboard players set $1 light_green.main.math 1
scoreboard players set $2 light_green.main.math 2
scoreboard players set $10 light_green.main.math 10
scoreboard players set $-1 light_green.main.math -1
scoreboard players set $3 light_green.main.math 3
scoreboard players set $4 light_green.main.math 4
scoreboard players set $5 light_green.main.math 5
scoreboard players set $75 light_green.main.math 75
scoreboard players set $20 light_green.main.math 20
scoreboard players set $3000 light_green.main.math 3000


bossbar add light_green:piglin_girl {"text":"\ue006",font:"light_green:custom"}
bossbar set light_green:piglin_girl color red

team add light_green.piglin
team modify light_green.piglin friendlyFire false

function light_green:load_trigger
schedule function light_green:load_late 5s
#say hi