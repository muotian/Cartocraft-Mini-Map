scoreboard players set $reload wool_purple.main.math 1

scoreboard objectives add wool_purple.main.math dummy
scoreboard objectives add wool_purple.main.mob_cheak dummy
scoreboard objectives add wool_purple.main.mob_id dummy
scoreboard objectives add wool_purple.main.player_id dummy

scoreboard players set $8 wool_purple.main.math 8

function ordered_splinter_weapon:load

#schedule function ordered_splinter_main:late_load 5s