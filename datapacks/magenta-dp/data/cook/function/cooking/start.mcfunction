#
data modify block ~ ~ ~ TransferCooldown set value 32767s

playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1 0

# 批量製作：份數 = 所有已放入食材數量的最小值
# 空槽必須先用 if data 擋掉，否則 data get 失敗時 store result 會寫入 0，把最小值拉成 0
scoreboard players set @s MagentaBatch 64

scoreboard players set #slot MagentaBatch 64
execute if data block ~ ~ ~ Items[{Slot:0b}] store result score #slot MagentaBatch run data get block ~ ~ ~ Items[{Slot:0b}].count
scoreboard players operation @s MagentaBatch < #slot MagentaBatch

scoreboard players set #slot MagentaBatch 64
execute if data block ~ ~ ~ Items[{Slot:1b}] store result score #slot MagentaBatch run data get block ~ ~ ~ Items[{Slot:1b}].count
scoreboard players operation @s MagentaBatch < #slot MagentaBatch

scoreboard players set #slot MagentaBatch 64
execute if data block ~ ~ ~ Items[{Slot:2b}] store result score #slot MagentaBatch run data get block ~ ~ ~ Items[{Slot:2b}].count
scoreboard players operation @s MagentaBatch < #slot MagentaBatch

scoreboard players set #slot MagentaBatch 64
execute if data block ~ ~ ~ Items[{Slot:3b}] store result score #slot MagentaBatch run data get block ~ ~ ~ Items[{Slot:3b}].count
scoreboard players operation @s MagentaBatch < #slot MagentaBatch

scoreboard players set #slot MagentaBatch 64
execute if data block ~ ~ ~ Items[{Slot:4b}] store result score #slot MagentaBatch run data get block ~ ~ ~ Items[{Slot:4b}].count
scoreboard players operation @s MagentaBatch < #slot MagentaBatch

# 廚師長袍會讓成品 ×3，先壓低上限，避免食材扣掉了卻超過一組的數量
scoreboard players set #cap MagentaBatch 64
execute if score @s MagentaUniform matches 1 run scoreboard players set #cap MagentaBatch 21
scoreboard players operation @s MagentaBatch < #cap MagentaBatch

# 食材不在這裡扣除，留到 finish 依成功／失敗決定要扣幾份
# 烹飪期間 TransferCooldown 鎖住漏斗、左鍵取回也被擋下，鍋內容物不會變動
