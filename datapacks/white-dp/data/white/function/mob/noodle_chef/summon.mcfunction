
summon zombie ~ ~ ~ {Tags:[white.mob.noodle_chef,summon],CustomName:{translate:"entity.white.noodle_chef",color:"#ecbaed",bold:true},Silent:1b,PersistenceRequired:1b,\
    equipment:{\
        head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNzQ4M2QxNGJhMzY4MDgxNDg1ZGY3NjFiNzljY2VkNzVmZDliMzhkMTQ5MTgwNGZmODUzYWRjOWY3NGY2ZCJ9fX0="}]}}},\
        chest:{id:"leather_chestplate",components:{dyed_color:15527148}},\
        legs:{id:"leather_leggings",components:{dyed_color:7303023,trim:{material:"redstone",pattern:"vex"}}},\
        feet:{id:"leather_boots",components:{dyed_color:14211288,trim:{material:"redstone",pattern:"eye"}}},\
    },\
    drop_chances:{head:0f,chest:0f,legs:0f,feet:0f,mainhand:100f,offhand:100f,body:0f,saddle:0f},\
    attributes:[{id:"movement_speed",base:0.24},{id:"attack_damage",base:2},{id:"follow_range",base:10}]}

loot replace entity @e[tag=summon,type=zombie,limit=1] weapon.mainhand loot white:mob/noodle
loot replace entity @e[tag=summon,type=zombie,limit=1] weapon.offhand loot white:mob/noodle
scoreboard players set @e[tag=summon,type=zombie,limit=1] white.mob.cd 15

data modify storage white:mob summon set value {id:noodle_chef,hpmax:20}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init