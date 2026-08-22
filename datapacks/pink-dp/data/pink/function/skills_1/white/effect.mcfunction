#
execute if entity @s[tag=pink_white_marker] run return fail


# 回血
effect give @s instant_health

# 清除負面效果
effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s blindness
effect clear @s hunger
effect clear @s weakness
effect clear @s wither
effect clear @s poison
effect clear @s levitation
effect clear @s unluck
effect clear @s darkness
effect clear @s weaving
effect clear @s wind_charged
effect clear @s oozing
effect clear @s infested

# 延長8秒
data modify storage pink:effect _ set from entity @s active_effects

function pink:skills_1/white/effect_change

#
tag @s add pink_white_marker
scoreboard players set @s pink.white.protect_cd 0

#
execute anchored eyes run summon text_display ^ ^ ^ {billboard:"center",shadow:0b,text:{"font":"pink:white_marker","text":"\u1012"},Tags:["pink_white_marker","new"],background:16711680,teleport_duration:1}






