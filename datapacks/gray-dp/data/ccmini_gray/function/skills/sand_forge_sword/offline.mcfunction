summon marker ~ ~ ~ {Tags:[gray.new,gray.remove_player_tag.taking_sfs]}
scoreboard players operation @e[type=marker,tag=gray.new] gray.id = @s gray.id
tag @e[type=marker,tag=gray.new] remove gray.new
kill @s
