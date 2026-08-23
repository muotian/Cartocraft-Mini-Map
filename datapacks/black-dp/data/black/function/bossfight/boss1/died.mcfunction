scoreboard players add @s icebird.DeathInBoss 1
execute store result score $death.rng icebird.boss1 run random value 1..2
execute if score $death.rng icebird.boss1 matches 1 run tellraw @a {"translate": "black.boss1.died1"}
execute if score $death.rng icebird.boss1 matches 2 run tellraw @a {"translate": "black.boss1.died2"}
tellraw @a [{"color":"yellow","selector":"@s"},{"color":"red","text":" died."}]
gamemode spectator @s

#icebird.boss1.died1 = 用相反的屬性去承受boss的攻擊! (Use the opposite elememt to take the boss's attack!)
#icebird.boss1.died2 = boss有兩條不同屬性的血量! (The boss has two different elemental health bars!)