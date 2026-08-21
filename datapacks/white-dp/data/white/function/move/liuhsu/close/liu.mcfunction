# + 3 盔甲值
# + 2 盔甲強度
# + 20% 移動速度

item modify entity @s armor.chest {function:"set_attributes",replace:true,modifiers:[\
    {id:"white:chest",attribute:"armor",amount:6,operation:"add_value",slot:"chest"},\
    {id:"white:chest",attribute:"armor_toughness",amount:2,operation:"add_value",slot:"chest"},\
    {id:"white:chest",attribute:"movement_speed",amount:0.2,operation:"add_multiplied_base",slot:"chest"},\
]}

function white:move/liuhsu/line/use