execute unless entity @a[distance=..32] run function icer:mini_boss/mithril_golem/reset

data modify entity @s angry_at set from entity @p UUID

execute store result score @s icer.mithril_golem_health run data get entity @s Health

execute if score @s icer.mithril_golem_health matches ..160 run function icer:mini_boss/mithril_golem/summon_guardian