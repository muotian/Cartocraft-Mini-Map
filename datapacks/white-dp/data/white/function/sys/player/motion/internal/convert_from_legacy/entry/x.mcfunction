## Backup the sign of $x and store the absolute value of $x into the conversion & conversion index scores
execute store result score #bucket_index white.motion.internal.dummy run \
    scoreboard players operation #crystal white.motion.internal.dummy = $x white.motion.api.launch
scoreboard players set #sign white.motion.internal.dummy 1
execute if score #crystal white.motion.internal.dummy matches ..-1 run scoreboard players set #sign white.motion.internal.dummy -1
execute if score #crystal white.motion.internal.dummy matches ..-1 \
    store result score #bucket_index white.motion.internal.dummy run \
    scoreboard players operation #crystal white.motion.internal.dummy *= #sign white.motion.internal.dummy

## Calculate conversion index from x ((x - 1) / 2000)
scoreboard players operation #bucket_index white.motion.internal.dummy /= #constant.2000 white.motion.internal.const
execute store result storage white:sys/player/motion/internal/temp convert.index int 1 run scoreboard players get #bucket_index white.motion.internal.dummy

## Run conversion of x input (crystal-tuned) to approximately equivalent `apply_impulse` method x component, bucket function restores sign, store in #x & matrix.x
execute store result score #x white.motion.internal.dummy store result storage white:sys/player/motion/internal/temp matrix.x double 1 run \
    function white:sys/player/motion/internal/convert_from_legacy/index with storage white:sys/player/motion/internal/temp convert