#
# 扣除一份食材，剩餘份數 #left 大於 0 就繼續遞迴

execute if items block ~ ~ ~ container.* milk_bucket run give @p bucket
execute if items block ~ ~ ~ container.* honey_bottle run give @p glass_bottle

item modify block ~ ~ ~ container.0 cook:removeone
item modify block ~ ~ ~ container.1 cook:removeone
item modify block ~ ~ ~ container.2 cook:removeone
item modify block ~ ~ ~ container.3 cook:removeone
item modify block ~ ~ ~ container.4 cook:removeone

scoreboard players remove #left MagentaBatch 1
execute if score #left MagentaBatch matches 1.. run function cook:cooking/consume
