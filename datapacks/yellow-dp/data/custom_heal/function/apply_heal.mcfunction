# Symbols (all stored ×10000):
#   M = final max health (after all attribute modifiers)
#   H = current health
#   A = desired heal amount  (c.heal, set by caller)
#   m = add_multiplied_total modifier = (H + A - M) / M
#      new max health = M * (1 + m) = H + A

# get M and H; accumulate A (supports multiple calls per tick)
scoreboard players operation @s c.actual_heal += @s c.heal
attribute @s minecraft:max_health modifier remove custom_heal:health_adjuster
execute store result score #c.max_health c.heal run attribute @s minecraft:max_health get 10000
execute store result score #c.current_health c.heal run data get entity @s Health 10000

# exit if H >= M (already full)
execute if score #c.max_health c.heal <= #c.current_health c.heal run return run scoreboard players set @s c.actual_heal 0

# compute numerator = (H + A - M) × 10000
scoreboard players operation #c.numerator c.heal = #c.current_health c.heal
scoreboard players operation #c.numerator c.heal += @s c.actual_heal
scoreboard players operation #c.numerator c.heal -= #c.max_health c.heal

# if H + A >= M, skip attribute manipulation and fully heal
execute if score #c.numerator c.heal matches 0.. run return run function custom_heal:full_heal

# divide: m = (H + A - M) / M  (×10000 factors cancel)
data modify storage custom_heal:div matrix set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f]
execute store result storage custom_heal:div matrix[0] float 1 run scoreboard players get #c.numerator c.heal
execute store result storage custom_heal:div matrix[-1] float 1 run scoreboard players get #c.max_health c.heal
data modify entity 1-1-1-1-3 transformation set from storage custom_heal:div matrix
data modify storage custom_heal:div result.x set from entity 1-1-1-1-3 transformation.scale[0]

# apply modifier: new max = M * (1 + m) = H + A, then fill to new max with Instant Health
function custom_heal:set_hp with storage custom_heal:div result
effect give @s minecraft:instant_health 1 28 true
scoreboard players set @s c.custom_healed 1
advancement revoke @s only custom_heal:reset_heal