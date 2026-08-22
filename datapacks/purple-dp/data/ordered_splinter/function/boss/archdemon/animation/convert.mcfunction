scoreboard players remove @s wool_purple.boss_animation 1

# 死亡
execute if score @s wool_purple.boss_type matches -1 run return run function ordered_splinter:boss/archdemon/animation/die
# 噴火
execute if score @s wool_purple.boss_type matches 7 run return run function ordered_splinter:boss/archdemon/animation/hellfire
# 冰塊
execute if score @s wool_purple.boss_type matches 6 run return run function ordered_splinter:boss/archdemon/animation/ice_radio
# 停衝
execute if score @s wool_purple.boss_type matches 5 run return run function ordered_splinter:boss/archdemon/animation/sprint_stop
# 衝刺
execute if score @s wool_purple.boss_type matches 4 run return run function ordered_splinter:boss/archdemon/animation/sprint
# 落地
execute if score @s wool_purple.boss_type matches 3 run return run function ordered_splinter:boss/archdemon/animation/landing
# 跳躍
execute if score @s wool_purple.boss_type matches 2 run return run function ordered_splinter:boss/archdemon/animation/jump
# 攻擊
execute if score @s wool_purple.boss_type matches 1 run return run function ordered_splinter:boss/archdemon/animation/attack
# 移動
execute if score @s wool_purple.boss_move_step matches 1.. run function ordered_splinter:boss/archdemon/animation/move