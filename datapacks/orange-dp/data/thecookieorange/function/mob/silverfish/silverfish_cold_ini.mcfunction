particle minecraft:dust_color_transition{from_color:[0.000,0.765,1.000],to_color:[0.871,0.933,1.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.5 4 normal

effect give @a[distance=..3] minecraft:slowness 4 0 true

execute as @s[tag=orange.cold.wind.silverfish, team=!orange_falling_creeper] run team join orange_falling_creeper

effect give @s glowing 1 1 true