
# Scoreboards
scoreboard objectives add white.main dummy

scoreboard players set #-1 white.main -1
scoreboard players set #2 white.main 2
scoreboard players set #3 white.main 3
scoreboard players set #4 white.main 4
scoreboard players set #5 white.main 5
scoreboard players set #6 white.main 6
scoreboard players set #10 white.main 10
scoreboard players set #15 white.main 15
scoreboard players set #16 white.main 16
scoreboard players set #20 white.main 20
scoreboard players set #40 white.main 40
scoreboard players set #80 white.main 80
scoreboard players set #100 white.main 100
scoreboard players set #300 white.main 300
scoreboard players set #1000 white.main 1000

scoreboard objectives add white.duration dummy
scoreboard objectives add white.mob.id dummy
scoreboard objectives add white.mob.cd dummy
scoreboard objectives add white.mob_target.id dummy

scoreboard objectives add white.player.id dummy
scoreboard objectives add white.mined_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add white.jump custom:jump
scoreboard objectives add white.right_click.duration dummy
scoreboard objectives add white.right_click.duration.detect dummy

function white:move/load
function white:sys/player/motion/internal/init

# Entities
kill a1-0-0-0-0
execute unless entity a1-0-0-0-0 run summon marker 0.0 0.0 0.0 {UUID:[I;161,0,0,0]}

# Bossbars

# Forceloads
forceload add 0 0

# Teams

# Reloaded
tellraw Paper_Cricel "Reloaded!"
execute as Paper_Cricel at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1