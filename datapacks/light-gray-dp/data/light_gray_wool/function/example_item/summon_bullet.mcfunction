# 執行者：吹響號角的玩家
# 執行位置：同上

# 召喚子彈(8顆)
summon item_display ~ ~ ~ {Rotation:[0f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[45f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[90f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[135f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[180f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[225f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[270f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}
summon item_display ~ ~ ~ {Rotation:[315f, 0f], Tags:[light_gray_wool.bullet, light_gray_wool.object, light_gray_wool.new], item:{id:"ochre_froglight"}, teleport_duration:1}

# 設定子彈的持續時間
scoreboard players set @e[type=item_display, tag=light_gray_wool.bullet, tag=light_gray_wool.new] light_gray_wool.object_duration 300
tag @e[tag=light_gray_wool.new] remove light_gray_wool.new