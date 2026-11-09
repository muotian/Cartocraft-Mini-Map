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

# gateway
scoreboard objectives add assist.gateway dummy
scoreboard objectives add assist.gateway.id dummy
scoreboard objectives add assist.gateway.active dummy
scoreboard objectives add assist.gateway.timer dummy
scoreboard objectives add assist.gateway.looked_at dummy
scoreboard objectives add assist.gateway.dx dummy
scoreboard objectives add assist.gateway.dy dummy
scoreboard objectives add assist.gateway.dz dummy

team add assist.gateway.aqua
team modify assist.gateway.aqua color aqua
team add assist.gateway.gold
team modify assist.gateway.gold color gold
team add assist.gateway.light_purple
team modify assist.gateway.light_purple color light_purple

data modify storage assist:gateway colors set value [\
  { index:  0, color: "white" },\
  { index:  1, color: "orange" },\
  { index:  2, color: "magenta" },\
  { index:  3, color: "light_blue" },\
  { index:  4, color: "yellow" },\
  { index:  5, color: "lime" },\
  { index:  6, color: "pink" },\
  { index:  7, color: "gray" },\
  { index:  8, color: "light_gray" },\
  { index:  9, color: "cyan" },\
  { index: 10, color: "purple" },\
  { index: 11, color: "blue" },\
  { index: 12, color: "brown" },\
  { index: 13, color: "green" },\
  { index: 14, color: "red" },\
  { index: 15, color: "black" }\
]
