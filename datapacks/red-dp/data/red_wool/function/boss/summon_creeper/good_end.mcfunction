advancement revoke @a only red_wool:boss/kill_pets

playsound entity.ghast.hurt block @a ~ ~ ~ 1.0 1.0 1.0
scoreboard players set boss_light_bar red_wool.boss 5
function red_wool:boss/summon_creeper/summon_light_bot

bossbar set red_wool.boss color white
schedule clear red_wool:boss/boss_hp/set_name2
schedule function red_wool:boss/boss_hp/set_name2 5t

function red_wool:boss/summon_creeper/end

