
summon marker ~ ~0.4 ~ {Tags:[white.move.prism_oath.s2.wave,"summon"]}
rotate @e[tag=summon,type=marker,limit=1] ~ 0
function white:sys/bullet/init

# fx
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.1 1.5
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.5 1.5
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.25 1.5