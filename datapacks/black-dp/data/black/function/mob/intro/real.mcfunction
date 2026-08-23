# 顯示雙語介紹
tellraw @s {"translate":"black.intro.attr.1"}

# 播放解鎖音效 (可選)
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 1 1

advancement grant @s only black:mob/attr_3