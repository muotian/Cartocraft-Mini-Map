# Bucket 29: crystal 58001 to 60000
execute store result storage white:sys/player/motion/tmp convert double 0.663363 run scoreboard players get #crystal white.motion.internal.dummy
execute store result score #crystal white.motion.internal.dummy store result score #temp white.motion.internal.dummy run data get storage white:sys/player/motion/tmp convert 10
scoreboard players operation #temp white.motion.internal.dummy %= #constant.10 white.motion.internal.const
execute if score #temp white.motion.internal.dummy matches 5.. run scoreboard players add #crystal white.motion.internal.dummy 10
scoreboard players operation #crystal white.motion.internal.dummy /= #constant.10 white.motion.internal.const
scoreboard players operation #crystal white.motion.internal.dummy += #convert.29.adder white.motion.internal.const