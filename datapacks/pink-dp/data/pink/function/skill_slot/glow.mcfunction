#
tag @s remove pink.look

title @s actionbar ""

#
scoreboard players operation $this pink.id = @s pink.id

execute as @e[tag=pink.skill_slot.glow] if score @s pink.id = $this pink.id run team leave @s
