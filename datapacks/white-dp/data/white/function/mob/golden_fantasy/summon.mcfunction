
summon parched ~ ~ ~ {Tags:[white.mob.golden_fantasy,summon],CustomName:{translate:"entity.white.golden_fantasy",color:"#ecbaed",bold:true},PersistenceRequired:1b,\
    equipment:{\
        head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjOTBjNmE4MTkwM2U0YTFiZWRlZTQxNDQ5OWIwNTQ3ZWJiNjM2ZjJhNTJhMzZjNjUxMTA2NWY2MmM5NDcxZCJ9fX0="}]}}},\
        chest:{id:"leather_chestplate",components:{"!attribute_modifiers":{},dyed_color:16042297}},\
        legs:{id:"leather_leggings",components:{"!attribute_modifiers":{},dyed_color:13735479}},\
        feet:{id:"leather_boots",components:{"!attribute_modifiers":{},dyed_color:9802899,trim:{material:"gold",pattern:"flow"}}},\
        mainhand:{id:"golden_axe",components:{enchantments:{knockback:1}}},\
    },\
    attributes:[{id:"movement_speed",base:0.24},{id:"attack_damage",base:-3},{id:"safe_fall_distance",base:1024}]}

data modify storage white:mob summon set value {id:golden_fantasy,cd:"40..80",hpmax:28}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init