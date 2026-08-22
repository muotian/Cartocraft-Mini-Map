summon marker ~ ~ ~ {Tags:[gray.new,gray.remove_player_tag.taking_gopr]}
scoreboard players operation @e[type=marker,tag=gray.new] gray.id = @s gray.id
tag @e[type=marker,tag=gray.new] remove gray.new
function animated_java:gray_gopr/remove/this
