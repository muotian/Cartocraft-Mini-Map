# 執行者：無
# 執行位置：世界重生點

# 這是 tick 函數，每秒會執行 20 次。
# 很適合用於持續偵測

# 範例武器
function light_gray_wool:example_weapon/tick

function light_gray_wool:spell_temp_sword/tick
function light_gray_wool:soul_flag/tick
function light_gray_wool:spell_power/tick
function light_gray_wool:sword/tick

# 範例道具
function light_gray_wool:example_item/tick

# 靈力
function light_gray_wool:power/tick

# 符咒
function light_gray_wool:spell_base/tick
function light_gray_wool:spell_scale/tick
function light_gray_wool:spell_extra/tick
function light_gray_wool:spell_freeze/tick
function light_gray_wool:spell_open/tick
function light_gray_wool:spell_gathering/tick
function light_gray_wool:spell_sword/tick

function light_gray_wool:spell_explosion/tick
function light_gray_wool:spell_resistance/tick
function light_gray_wool:spell_regeneration/tick

# 範例怪物
function light_gray_wool:example_monster/tick

function light_gray_wool:bear/tick
function light_gray_wool:boss/tick
function light_gray_wool:thunder_monster/tick


# 把過期的物件刪掉
scoreboard players remove @e[tag=light_gray_wool.object, scores={light_gray_wool.object_duration=1..}] light_gray_wool.object_duration 1
kill @e[tag=light_gray_wool.object, scores={light_gray_wool.object_duration=..0}]

clear @a minecraft:stone[minecraft:custom_name="thunder",item_model="light_gray_wool:thunder"]