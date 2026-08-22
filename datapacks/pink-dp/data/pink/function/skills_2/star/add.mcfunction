scoreboard players add @s pink._star.marker 3

# bonus
tag @s add target

execute if score @s pink._star.marker matches ..19 on attacker if entity @s[tag=pink.armor.star_set] if predicate pink:probability/40 run scoreboard players add @n[tag=target] pink._star.marker 1

tag @s remove target

scoreboard players set @s[scores={pink._star.marker=20..}] pink._star.marker 20

# Damage

execute store result score $damage pink._star.marker run random value 2..5
execute if score $damage pink._star.marker > @s pink._star.marker run scoreboard players operation $damage pink._star.marker = @s pink._star.marker

scoreboard players operation @s pink._star.marker -= $damage pink._star.marker
execute if score @s pink._star.marker matches ..0 run scoreboard players reset @s pink._star.marker

scoreboard players operation $skill2_damage pink._star.marker = $damage pink._star.marker
scoreboard players operation $skill2_damage pink._star.marker *= $*2 pink._star.marker
execute store result score $player_attribute pink._star.marker run attribute @p[tag=owner_2] attack_damage get
scoreboard players operation $skill2_damage pink._star.marker += $player_attribute pink._star.marker

execute store result storage pink:star skill2_damage byte 1 run scoreboard players get $skill2_damage pink._star.marker
function pink:skills_2/star/post_damage with storage pink:star {}


# bouns
tag @s add target

execute if entity @p[tag=pink.armor.star2,tag=owner_2] run damage @s[tag=!pink_mobs] 2.5 pink:magic_tick by @p[tag=owner_2]
execute if entity @p[tag=pink.armor.star2,tag=owner_2] run damage @s[tag=pink_mobs] 5 pink:magic_tick by @p[tag=owner_2]

tag @s remove target
#
tag @a[tag=owner_2] remove owner_2

execute unless score @s pink._star.marker matches 1.. on passengers run kill @s

# Text
execute store result storage pink:star text_motion_x double 0.01 run random value -20..20
execute store result storage pink:star text_motion_y double 0.01 run random value 15..25
execute store result storage pink:star text_motion_z double 0.01 run random value -20..20

execute store result storage pink:star damage_text byte 1 run scoreboard players get $damage pink._star.marker
execute facing entity @p eyes anchored eyes run function pink:skills_2/star/damage_text with storage pink:star {}

# Marker

execute store result storage pink:star marker int 1 run scoreboard players get @s pink._star.marker
data modify storage pink:star marker set string storage pink:star marker
execute unless predicate pink:star/marker run function pink:skills_1/star/new_marker

execute if predicate pink:star/marker on passengers run data modify entity @s text.text set from storage pink:star marker

# Effect
effect give @s slowness 7 0 false
effect give @s weakness 7 0 false

# Attacker
execute on attacker at @s run function pink:skills_2/star/attacker


# aj
execute anchored eyes positioned ^ ^ ^ on attacker facing entity @s eyes run function animated_java:pink_star1/summon {args: {animation: '1', start_animation: true}}


