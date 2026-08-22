# u
execute as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 1.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 2.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 3.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 4.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r

# u
execute as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 1.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 2.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 3.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r
execute if score @s pink.black_hole.damage matches 4.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r

# effect
execute if score @s pink.black_hole.effect matches 1.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r
execute if score @s pink.black_hole.effect matches 2.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r
execute if score @s pink.black_hole.effect matches 3.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=!pink_mobs] run damage @s 0.07 pink:magic_tick2 by @r

# effect
execute if score @s pink.black_hole.effect matches 1.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r
execute if score @s pink.black_hole.effect matches 2.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r
execute if score @s pink.black_hole.effect matches 3.. as @e[distance=..5,type=!#pink:object,type=!player,tag=!pink_skill_slot,limit=1,sort=random,tag=pink_mobs] run damage @s 0.14 pink:magic_tick2 by @r

# pull
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,type=!villager,distance=13..15,tag=!pink.dummy.damage.item] at @s run function pink:skills_3/black_hole/pull {dis:0.1}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,type=!villager,distance=11..13,tag=!pink.dummy.damage.item] at @s run function pink:skills_3/black_hole/pull {dis:0.1}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,type=!villager,distance=9..11,tag=!pink.dummy.damage.item] at @s run function pink:skills_3/black_hole/pull {dis:0.5}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,type=!villager,distance=7..9,tag=!pink.dummy.damage.item] at @s run function pink:skills_3/black_hole/pull {dis:0.7}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,type=!villager,distance=3..7,tag=!pink.dummy.damage.item] at @s run function pink:skills_3/black_hole/pull {dis:1.5}

execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,distance=13..15,tag=pink.train.dummy] at @s run function pink:skills_3/black_hole/pull {dis:0.1}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,distance=11..13,tag=pink.train.dummy] at @s run function pink:skills_3/black_hole/pull {dis:0.1}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,distance=9..11,tag=pink.train.dummy] at @s run function pink:skills_3/black_hole/pull {dis:0.5}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,distance=7..9,tag=pink.train.dummy] at @s run function pink:skills_3/black_hole/pull {dis:0.7}
execute as @e[type=!#pink:object2,type=!player,tag=!pink_skill_slot,distance=3..7,tag=pink.train.dummy] at @s run function pink:skills_3/black_hole/pull {dis:1.5}



# life
scoreboard players add @s pink.black_hole.life 1
execute if score @s pink.black_hole.life matches 240.. run function animated_java:pink_black1/remove/this
