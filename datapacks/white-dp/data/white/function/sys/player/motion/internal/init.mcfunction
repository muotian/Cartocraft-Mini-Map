## Scores
scoreboard objectives add white.motion.api.launch dummy
scoreboard objectives add white.motion.internal.dummy dummy
scoreboard objectives add white.motion.internal.math dummy
scoreboard objectives add white.motion.internal.const dummy
    scoreboard players set #constant.-1 white.motion.internal.const -1
    scoreboard players set #constant.2 white.motion.internal.const 2
    scoreboard players set #constant.10 white.motion.internal.const 10
    scoreboard players set #constant.12 white.motion.internal.const 12
    scoreboard players set #constant.100 white.motion.internal.const 100
    scoreboard players set #constant.1000 white.motion.internal.const 1000
    scoreboard players set #constant.2000 white.motion.internal.const 2000
    scoreboard players set #constant.8000 white.motion.internal.const 8000
    scoreboard players set #constant.100000 white.motion.internal.const 100000
    scoreboard players set #constant.1000000 white.motion.internal.const 1000000
scoreboard objectives add white.motion.internal.gamemode dummy
scoreboard objectives add white.motion.internal.previous_vec_k dummy
scoreboard objectives add white.motion.internal.previous_x.in dummy
scoreboard objectives add white.motion.internal.previous_y.in dummy
scoreboard objectives add white.motion.internal.previous_z.in dummy
scoreboard objectives add white.motion.internal.previous_x dummy
scoreboard objectives add white.motion.internal.previous_y dummy
scoreboard objectives add white.motion.internal.previous_z dummy
scoreboard objectives add white.motion.internal.previous_method dummy
scoreboard objectives add white.motion.internal.store dummy
function white:sys/player/motion/internal/convert_from_legacy/scoreboard_constants

## Forceload
forceload remove 0 0
forceload add 0 0

## Marker
kill d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f
summon marker 0.0 0.0 0.0 {UUID:[I; -725781337, 1317161479, -2007965756, -660627921], Tags:["smithed.strict", "smithed.entity"]}
