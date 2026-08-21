# 偵測該顏色的 Marker 處是否有對應羊毛，且星星尚未點亮
$execute at @e[tag=$(monu_tag),limit=1] if block ~ ~ ~ minecraft:$(color)_wool unless entity @a[tag=lit_$(color)] run function monu:wool/launch_energy with storage monu:points $(color)
