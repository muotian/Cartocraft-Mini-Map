# + 2 盔甲值
# + 20% 攻擊傷害
# + 20% 攻擊速度

item modify entity @s armor.chest {function:"set_attributes",replace:true,modifiers:[\
    {id:"white:chest",attribute:"armor",amount:5,operation:"add_value",slot:"chest"},\
    {id:"white:chest",attribute:"attack_damage",amount:0.2,operation:"add_multiplied_base",slot:"chest"},\
    {id:"white:chest",attribute:"attack_speed",amount:0.2,operation:"add_multiplied_base",slot:"chest"},\
]}