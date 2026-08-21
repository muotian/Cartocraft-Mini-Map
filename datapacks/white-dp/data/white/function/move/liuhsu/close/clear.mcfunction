
tag @s remove white.move.liuhsu.close

item modify entity @s armor.chest {function:"set_attributes",replace:true,modifiers:[\
    {id:"white:chest",attribute:"armor",amount:3,operation:"add_value",slot:"chest"},\
]}

execute as 147dbc88-8332-46b3-97cc-4d362aca6e24 at @s run function white:move/liuhsu/line/clear