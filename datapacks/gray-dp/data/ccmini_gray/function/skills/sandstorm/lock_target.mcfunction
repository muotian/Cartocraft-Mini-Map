#發射2條raycast確認是否可以吸引的到生物
execute positioned ~ ~1.8 ~ facing entity @e[tag=gray.sandstorm.target,tag=!gray.sandstorm.target.checked,limit=1,sort=nearest] eyes run function ccmini_gray:skills/sandstorm/raycast
execute positioned ~ ~ ~ facing entity @e[tag=gray.sandstorm.target,tag=!gray.sandstorm.target.checked,limit=1,sort=nearest] feet run function ccmini_gray:skills/sandstorm/raycast
#剔除已確認目標，確保不會重複執行相同目標
tag @e[tag=gray.sandstorm.target,tag=!gray.sandstorm.target.checked,limit=1,sort=nearest] add gray.sandstorm.target.checked
#還有未確認目標跑遞迴直到所有目標都確認過
execute if entity @e[tag=gray.sandstorm.target,tag=!gray.sandstorm.target.checked] run function ccmini_gray:skills/sandstorm/lock_target

