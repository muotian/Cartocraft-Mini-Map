# 執行者：子彈(item_display)
# 執行位置：同上

# 子彈邊飛邊轉
tp @s ^ ^ ^0.1 ~1 ~

# 子彈對其他生物造成生害
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!player, dx=0, dy=0, dz=0] run damage @s 1