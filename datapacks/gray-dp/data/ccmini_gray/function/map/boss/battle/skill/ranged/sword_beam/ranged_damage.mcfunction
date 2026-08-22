$execute positioned ~-$(offset) ~-0.5 ~-$(offset) as @a[dx=$(size),dy=0,dz=$(size)] if score @s gray.gopr.invincibility.frames matches 1.. unless score @s gray.gopr.invincibility.frames.additional matches 4.. run function ccmini_gray:system/dodge_success

$execute positioned ~-$(offset) ~-0.5 ~-$(offset) as @e[dx=$(size),dy=0,dz=$(size),nbt={DeathTime:0s},type=!armor_stand,tag=!gray.boss.hitbox] unless score @s gray.gopr.invincibility.frames matches 1.. unless score @s gray.gopr.invincibility.frames.additional matches 1.. run tag @s add gray.boss.battle.sword_beam.hurt


$execute if score @e[type=item_display,tag=aj.gray_sword_beam.root,limit=1] gray.distance matches 1..20 run damage @e[dx=$(size),dy=0,dz=$(size),tag=gray.boss.battle.sword_beam.hurt,limit=1] 10 ccmini_gray:physical_damage by @e[type=parched,tag=gray.boss.hitbox,limit=1]
$execute if score @e[type=item_display,tag=aj.gray_sword_beam.root,limit=1] gray.distance matches 21..40 run damage @e[dx=$(size),dy=0,dz=$(size),tag=gray.boss.battle.sword_beam.hurt,limit=1] 20 ccmini_gray:physical_damage by @e[type=parched,tag=gray.boss.hitbox,limit=1]
$execute if score @e[type=item_display,tag=aj.gray_sword_beam.root,limit=1] gray.distance matches 41..60 run damage @e[dx=$(size),dy=0,dz=$(size),tag=gray.boss.battle.sword_beam.hurt,limit=1] 30 ccmini_gray:physical_damage by @e[type=parched,tag=gray.boss.hitbox,limit=1]


$tag @e[dx=$(size),dy=0,dz=$(size)] remove gray.boss.battle.sword_beam.hurt