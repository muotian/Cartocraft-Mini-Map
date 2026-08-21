## Backup the sign of $y and store the absolute value of $y into the conversion & conversion index scores
execute store result score #bucket_index white.motion.internal.dummy run \
    scoreboard players operation #crystal white.motion.internal.dummy = $y white.motion.api.launch
scoreboard players set #sign white.motion.internal.dummy 1
execute if score #crystal white.motion.internal.dummy matches ..-1 run scoreboard players set #sign white.motion.internal.dummy -1
execute if score #crystal white.motion.internal.dummy matches ..-1 \
    store result score #bucket_index white.motion.internal.dummy run \
    scoreboard players operation #crystal white.motion.internal.dummy *= #sign white.motion.internal.dummy

## Calculate conversion index from y ((y - 1) / 2000)
scoreboard players operation #bucket_index white.motion.internal.dummy /= #constant.2000 white.motion.internal.const
execute store result storage white:sys/player/motion/internal/temp convert.index int 1 run scoreboard players get #bucket_index white.motion.internal.dummy

## Run conversion of y input (crystal-tuned) to approximately equivalent `apply_impulse` method y component, bucket function restores sign, store in #y & matrix.y
execute store result score #y white.motion.internal.dummy store result storage white:sys/player/motion/internal/temp matrix.y double 1 run \
    function white:sys/player/motion/internal/convert_from_legacy/index with storage white:sys/player/motion/internal/temp convert