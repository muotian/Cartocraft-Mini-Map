#招喚 音效 冷卻
execute rotated 0 0 run function animated_java:gray_sandstorm/summon {args:{animation:"sandstorm",start_animation:true}}
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1
scoreboard players set @s gray.relic_of_dustwind_cd 200