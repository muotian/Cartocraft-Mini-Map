$summon arrow ~ 300.4 ~ {weapon:{id:bow,components:{enchantments:{"ordered_splinter:set_player_fire":$(fire_level)}}},Tags:[wool_purple.fire_arrow]}
data modify entity @e[tag=wool_purple.fire_arrow,limit=1] Owner set from entity @p[tag=wool_purple.fire_target] UUID
summon silverfish ~ 300 ~ {PersistenceRequired:1b,active_effects:[{id:invisibility,duration:-1,amplifier:1,show_particles:0b}],NoGravity:1b,Silent:1b,Health:2048,attributes:[{id:"max_health",base:2048}],Tags:[wool_purple.dummy]}
tag @p[tag=wool_purple.fire_target] remove wool_purple.fire_target

schedule function ordered_splinter:boss/archdemon/animation/fire_debug 4t