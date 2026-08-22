# 目標

#
execute store result score $30%_max_hp pink.black.skill3.damage run attribute @s max_health get
scoreboard players operation $30%_max_hp pink.black.skill3.damage *= $30% pink.black.skill3.damage
scoreboard players operation $30%_max_hp pink.black.skill3.damage /= $100% pink.black.skill3.damage

execute store result score @s pink.black.skill3.damage run scoreboard players operation $30%_max_hp pink.black.skill3.damage += $bd pink.black.skill3.damage
scoreboard players set @s[tag=boss_] pink.black.skill3.damage 50
execute if entity @p[tag=pink.strength] run scoreboard players operation @s pink.black.skill3.damage *= $200% pink.black.skill3.damage

# 力量加成
execute store result storage pink:black_damage damage float 1 run scoreboard players get @s pink.black.skill3.damage


tag @a[tag=pink.strength] remove pink.strength

execute anchored eyes positioned ^ ^-.3 ^ as @p[tag=this_player] facing entity @s eyes run function animated_java:pink_skill3_d2/summon {args: {animation: '1', start_animation: true}}
function pink:skills_3/black/damage with storage pink:black_damage {}
playsound pink:black_ultimate_skill2 player @a ~ ~ ~ 0.6 0.8
playsound pink:black_ultimate_skill1 player @a ~ ~ ~ 0.5 1
execute anchored eyes run particle block{block_state:"minecraft:redstone_block"} ^ ^ ^ .4 .5 .4 0 80 normal
#

