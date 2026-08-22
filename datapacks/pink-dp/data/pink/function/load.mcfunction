# ID
scoreboard objectives add pink.id dummy
execute unless score $index pink.id matches 0.. run scoreboard players set $index pink.id 0

scoreboard objectives add pink.animation.alpha dummy
scoreboard objectives add pink.animation.tick dummy
scoreboard objectives add pink.animation.frame dummy

team add pink.aqua
team modify pink.aqua color aqua

# Math Marker
execute unless entity @n[tag=math_marker,type=marker] run summon marker 0.0 0.0 0.0 {Tags:["math_marker"]}

# Player
scoreboard objectives add pink.player_health health

# Skill Store
execute at @p run function pink:skill_store

# Resistance
scoreboard objectives add pink.resistance.hp dummy
scoreboard players set %*10 pink.resistance.hp 10

# Mana
scoreboard objectives add pink.mana dummy
scoreboard objectives add pink.mana_u dummy
scoreboard objectives add pink.mana_v dummy

scoreboard objectives add pink.mana_u_tick dummy
scoreboard objectives add pink.mana_v_tick dummy

scoreboard objectives add pink.mana_u_reply dummy
scoreboard objectives add pink.mana_v_reply dummy

execute as @a unless score @s pink.mana_u_reply matches 1.. run scoreboard players set @s pink.mana_u_reply 40
execute as @a unless score @s pink.mana_v_reply matches 1.. run scoreboard players set @s pink.mana_v_reply 360

# Mana reduce
scoreboard objectives add pink.mana_reduce.8mana dummy
scoreboard objectives add pink.mana_reduce.white_skill dummy

# s1
scoreboard objectives add pink.s1.id1 dummy
scoreboard objectives add pink.s1.id2 dummy


# Star 1 
scoreboard objectives add pink._star.marker dummy

scoreboard objectives add pink.star.skill.cd dummy
scoreboard players set $20 pink.star.skill.cd 20

scoreboard objectives add pink.star.skill1.card_count dummy
scoreboard objectives add pink.star.skill1.temp dummy
scoreboard objectives add pink.star.skill1.use dummy

scoreboard objectives add pink.star.skill3.charge dummy

scoreboard players set $*2.5 pink._star.marker 25

execute as @a unless score @s pink.star.skill1.card_count matches 0.. run scoreboard players set @s pink.star.skill1.card_count 0
# Black 1
scoreboard objectives add pink.black.strengthen_attack dummy

# Black 3
scoreboard objectives add pink.black.skill3.damage dummy
scoreboard players set $30% pink.black.skill3.damage 30
scoreboard players set $100% pink.black.skill3.damage 100
scoreboard players set $bd pink.black.skill3.damage 25
scoreboard players set $200% pink.black.skill3.damage 2

scoreboard objectives add pink.black.skill3.id dummy

# White 1
scoreboard objectives add pink.white.effect dummy
scoreboard players set $/20 pink.white.effect 20
scoreboard players set $8s pink.white.effect 8

scoreboard objectives add pink.white.protect_cd dummy

# White 2
scoreboard objectives add pink.white.skill2.duration dummy


# White 3
scoreboard objectives add pink.white.skill3.duration dummy
scoreboard objectives add pink.white.skill3.damage custom:damage_resisted

scoreboard players set $*10 pink.white.skill3.damage 10
scoreboard players set $-10 pink.white.skill3.damage 10

# Black hole
scoreboard objectives add pink.black_hole.damage dummy
scoreboard objectives add pink.black_hole.effect dummy
scoreboard objectives add pink.black_hole.life dummy


# Armor
scoreboard objectives add pink.armor.star.count dummy
scoreboard objectives add pink.armor.star.absorption_cd dummy
scoreboard objectives add pink.armor.star.regeneration_stop dummy

scoreboard objectives add pink.armor.black.count dummy


# Item
scoreboard objectives add pink.item.wheat_pieces.break minecraft.mined:spawner
scoreboard objectives add pink.item.fire_pieces.break minecraft.mined:spawner
scoreboard objectives add pink.item.wolf_pieces.break minecraft.mined:spawner
scoreboard objectives add pink.item.wolf_pieces.life dummy


###### Monster
team add pink.monster1
team modify pink.monster1 color red
team modify pink.monster1 friendlyFire false

team add pink.monster2
team modify pink.monster2 color dark_purple
team modify pink.monster2 friendlyFire false

# guardian
scoreboard objectives add pink.monster.guardian.block_cd dummy

# end crystal
scoreboard objectives add pink.monster.end_crystal.life dummy

# orderless
scoreboard objectives add pink.monster.orderless.cd dummy

# snake
scoreboard objectives add pink.monster.snake.id dummy

# gravity
scoreboard objectives add pink.monster.gravity.last_time dummy
scoreboard objectives add pink.monster.gravity.jump dummy
scoreboard objectives add pink.monster.gravity.jump.p dummy
scoreboard objectives add pink.monster.gravity.jump.temp dummy
scoreboard objectives add pink.monster.gravity.player_die deathCount


# snake
scoreboard objectives add pink.monster.clone.id dummy
execute unless score $index pink.monster.clone.id matches 1.. run scoreboard players set $index pink.monster.clone.id 1

scoreboard objectives add pink.monster.clone.cd dummy

# death
scoreboard objectives add pink.monster.death.skill dummy

# devour
scoreboard objectives add pink.monster.devour.skill dummy

# glass
scoreboard objectives add pink.monster.glass.skill dummy
scoreboard objectives add pink.monster.glass.armor dummy


###### NPC
scoreboard objectives add pink.npc.talk dummy
