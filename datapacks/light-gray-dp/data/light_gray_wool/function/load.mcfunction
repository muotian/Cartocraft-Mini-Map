# 執行者：無
# 執行位置：世界重生點

# 這是 load 函數，每當進入世界時，或是打 /reload 指令時都會執行一次。
# 很適合用來建立記分板，或是其它只需要執行一次的事情。

#say 載入成功

# 範例道具的記分板
scoreboard objectives add light_gray_wool.use_example_item minecraft.used:minecraft.goat_horn "使用範例道具"

# 靈氣相關計分
scoreboard objectives add light_gray_wool_temp_sword dummy "持劍時間"
scoreboard players set @s light_gray_wool_power 0
scoreboard objectives add light_gray_wool_power dummy "靈力"
scoreboard players set @s light_gray_wool_power 50

# 符咒
scoreboard objectives add light_gray_wool.use_spell_extra minecraft.used:minecraft.goat_horn "使用超越咒"
scoreboard objectives add light_gray_wool.use_spell_freeze minecraft.used:minecraft.goat_horn "使用定身咒"
scoreboard objectives add light_gray_wool.use_spell_open minecraft.used:minecraft.goat_horn "使用開門咒"
scoreboard objectives add light_gray_wool.use_spell_gathering minecraft.used:minecraft.goat_horn "使用聚靈符"
scoreboard objectives add light_gray_wool.use_spell_sword minecraft.used:minecraft.goat_horn "使用劍符"
scoreboard objectives add light_gray_wool.use_spell_scale minecraft.used:minecraft.goat_horn "使用化形符"
scoreboard objectives add light_gray_wool.use_spell_base minecraft.used:minecraft.goat_horn "使用還原符"

scoreboard objectives add light_gray_wool.use_spell_explosion minecraft.used:minecraft.goat_horn "使用爆破符"
scoreboard objectives add light_gray_wool.use_spell_resistance minecraft.used:minecraft.goat_horn "使用金剛咒"
scoreboard objectives add light_gray_wool.use_spell_regeneration minecraft.used:minecraft.goat_horn "使用回春符"



# 範例怪物的記分板
scoreboard objectives add light_gray_wool.boss_time dummy "boss發動技能的計時器"
scoreboard objectives add light_gray_wool_boss_hp dummy "boss血量"
scoreboard objectives add light_gray_wool.monster_time dummy "怪物發動技能的計時器"

bossbar add light_gray_wool_boss_hp "light_gray_wool_boss"
bossbar set light_gray_wool_boss_hp name {"translate":"entity.light_gray_wool.boss"}

# 物件持續時間的記分板
scoreboard objectives add light_gray_wool.object_duration dummy

