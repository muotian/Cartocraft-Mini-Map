
tag @s add white.atker
execute as @a[predicate=white:player,distance=..3.5] run damage @s 5 white:mob/golden_fantasy by @e[tag=white.atker,limit=1]
tag @s remove white.atker

data merge entity @s {NoGravity:false,Glowing:false}
function white:mob/golden_fantasy/1/clear

# fx
execute rotated 0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 22.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 45.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 67.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 90.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 112.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 135.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 157.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 180.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 202.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 225.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 247.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 270.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 292.5 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 315.0 0 run function white:mob/golden_fantasy/1/dispenser/use
execute rotated 337.5 0 run function white:mob/golden_fantasy/1/dispenser/use

playsound minecraft:item.totem.use master @a ~ ~ ~ 0.4 2
playsound white:ahh_slow master @a ~ ~ ~ 2 1

particle large_smoke ~ ~ ~ 1.0 0 0.0 0.5 0 force
particle large_smoke ~ ~ ~ 0.996 0 0.087 0.5 0 force
particle large_smoke ~ ~ ~ 0.985 0 0.174 0.5 0 force
particle large_smoke ~ ~ ~ 0.966 0 0.259 0.5 0 force
particle large_smoke ~ ~ ~ 0.94 0 0.342 0.5 0 force
particle large_smoke ~ ~ ~ 0.906 0 0.423 0.5 0 force
particle large_smoke ~ ~ ~ 0.866 0 0.5 0.5 0 force
particle large_smoke ~ ~ ~ 0.819 0 0.574 0.5 0 force
particle large_smoke ~ ~ ~ 0.766 0 0.643 0.5 0 force
particle large_smoke ~ ~ ~ 0.707 0 0.707 0.5 0 force
particle large_smoke ~ ~ ~ 0.643 0 0.766 0.5 0 force
particle large_smoke ~ ~ ~ 0.574 0 0.819 0.5 0 force
particle large_smoke ~ ~ ~ 0.5 0 0.866 0.5 0 force
particle large_smoke ~ ~ ~ 0.423 0 0.906 0.5 0 force
particle large_smoke ~ ~ ~ 0.342 0 0.94 0.5 0 force
particle large_smoke ~ ~ ~ 0.259 0 0.966 0.5 0 force
particle large_smoke ~ ~ ~ 0.174 0 0.985 0.5 0 force
particle large_smoke ~ ~ ~ 0.087 0 0.996 0.5 0 force
particle large_smoke ~ ~ ~ 0.0 0 1.0 0.5 0 force
particle large_smoke ~ ~ ~ -0.087 0 0.996 0.5 0 force
particle large_smoke ~ ~ ~ -0.174 0 0.985 0.5 0 force
particle large_smoke ~ ~ ~ -0.259 0 0.966 0.5 0 force
particle large_smoke ~ ~ ~ -0.342 0 0.94 0.5 0 force
particle large_smoke ~ ~ ~ -0.423 0 0.906 0.5 0 force
particle large_smoke ~ ~ ~ -0.5 0 0.866 0.5 0 force
particle large_smoke ~ ~ ~ -0.574 0 0.819 0.5 0 force
particle large_smoke ~ ~ ~ -0.643 0 0.766 0.5 0 force
particle large_smoke ~ ~ ~ -0.707 0 0.707 0.5 0 force
particle large_smoke ~ ~ ~ -0.766 0 0.643 0.5 0 force
particle large_smoke ~ ~ ~ -0.819 0 0.574 0.5 0 force
particle large_smoke ~ ~ ~ -0.866 0 0.5 0.5 0 force
particle large_smoke ~ ~ ~ -0.906 0 0.423 0.5 0 force
particle large_smoke ~ ~ ~ -0.94 0 0.342 0.5 0 force
particle large_smoke ~ ~ ~ -0.966 0 0.259 0.5 0 force
particle large_smoke ~ ~ ~ -0.985 0 0.174 0.5 0 force
particle large_smoke ~ ~ ~ -0.996 0 0.087 0.5 0 force
particle large_smoke ~ ~ ~ -1.0 0 0.0 0.5 0 force
particle large_smoke ~ ~ ~ -0.996 0 -0.087 0.5 0 force
particle large_smoke ~ ~ ~ -0.985 0 -0.174 0.5 0 force
particle large_smoke ~ ~ ~ -0.966 0 -0.259 0.5 0 force
particle large_smoke ~ ~ ~ -0.94 0 -0.342 0.5 0 force
particle large_smoke ~ ~ ~ -0.906 0 -0.423 0.5 0 force
particle large_smoke ~ ~ ~ -0.866 0 -0.5 0.5 0 force
particle large_smoke ~ ~ ~ -0.819 0 -0.574 0.5 0 force
particle large_smoke ~ ~ ~ -0.766 0 -0.643 0.5 0 force
particle large_smoke ~ ~ ~ -0.707 0 -0.707 0.5 0 force
particle large_smoke ~ ~ ~ -0.643 0 -0.766 0.5 0 force
particle large_smoke ~ ~ ~ -0.574 0 -0.819 0.5 0 force
particle large_smoke ~ ~ ~ -0.5 0 -0.866 0.5 0 force
particle large_smoke ~ ~ ~ -0.423 0 -0.906 0.5 0 force
particle large_smoke ~ ~ ~ -0.342 0 -0.94 0.5 0 force
particle large_smoke ~ ~ ~ -0.259 0 -0.966 0.5 0 force
particle large_smoke ~ ~ ~ -0.174 0 -0.985 0.5 0 force
particle large_smoke ~ ~ ~ -0.087 0 -0.996 0.5 0 force
particle large_smoke ~ ~ ~ -0.0 0 -1.0 0.5 0 force
particle large_smoke ~ ~ ~ 0.087 0 -0.996 0.5 0 force
particle large_smoke ~ ~ ~ 0.174 0 -0.985 0.5 0 force
particle large_smoke ~ ~ ~ 0.259 0 -0.966 0.5 0 force
particle large_smoke ~ ~ ~ 0.342 0 -0.94 0.5 0 force
particle large_smoke ~ ~ ~ 0.423 0 -0.906 0.5 0 force
particle large_smoke ~ ~ ~ 0.5 0 -0.866 0.5 0 force
particle large_smoke ~ ~ ~ 0.574 0 -0.819 0.5 0 force
particle large_smoke ~ ~ ~ 0.643 0 -0.766 0.5 0 force
particle large_smoke ~ ~ ~ 0.707 0 -0.707 0.5 0 force
particle large_smoke ~ ~ ~ 0.766 0 -0.643 0.5 0 force
particle large_smoke ~ ~ ~ 0.819 0 -0.574 0.5 0 force
particle large_smoke ~ ~ ~ 0.866 0 -0.5 0.5 0 force
particle large_smoke ~ ~ ~ 0.906 0 -0.423 0.5 0 force
particle large_smoke ~ ~ ~ 0.94 0 -0.342 0.5 0 force
particle large_smoke ~ ~ ~ 0.966 0 -0.259 0.5 0 force
particle large_smoke ~ ~ ~ 0.985 0 -0.174 0.5 0 force
particle large_smoke ~ ~ ~ 0.996 0 -0.087 0.5 0 force