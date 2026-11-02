# 從當前連鎖來源尋找 5 格內最近且尚未受擊的有效怪物（排除玩家、攻擊者與無敵假人）
execute at @s as @e[type=#mobs,tag=!wool_purple.attacker,tag=!wool_purple.chain_origin,nbt=!{Invulnerable:1b},tag=!wool_purple.hit,distance=0.1..5,limit=1,sort=nearest] run function ordered_splinter:sword/blade_of_finality/hit
