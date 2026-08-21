
scoreboard players set @s white.move.goodnight.cd 600

effect give @s regeneration 10 2 true
effect give @s saturation 1 1 true
effect give @s blindness 3 0 true
function white:move/goodnight/dizzy/use

# fx
playsound white:goodnight master @s ~ ~ ~
tellraw @s {translate:"text.white.move.goodnight",color:"#7c4d27",italic:true}