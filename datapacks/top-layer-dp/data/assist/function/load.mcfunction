#> assist:load

scoreboard objectives add assist.leave_game minecraft.custom:minecraft.leave_game

# booster
scoreboard objectives add assist.booster dummy
scoreboard objectives add assist.booster.id dummy
scoreboard objectives add assist.booster.due_time dummy
scoreboard objectives add assist.booster.reapply_time dummy
scoreboard objectives add assist.booster.animation dummy

scoreboard players set $duration assist.booster 100
scoreboard players set $cooldown assist.booster 120

data modify storage assist:booster config set value {duration:0,cooldown:0}
execute store result storage assist:booster config.duration int 1 run scoreboard players get $duration assist.booster
execute store result storage assist:booster config.cooldown int 1 run scoreboard players get $cooldown assist.booster

# jump pad
scoreboard objectives add assist.jump_pad dummy
scoreboard objectives add assist.jump_pad.vx dummy
scoreboard objectives add assist.jump_pad.vy dummy
scoreboard objectives add assist.jump_pad.vz dummy
scoreboard objectives add assist.jump_pad.animation dummy
