data modify storage cyan ans1 set from block ^-3 ^3 ^-3 front_text.messages[1]
data modify storage cyan ans2 set from block ^-1 ^3 ^-3 front_text.messages[1]
data modify storage cyan ans3 set from block ^1 ^3 ^-3 front_text.messages[1]
data modify storage cyan ans4 set from block ^3 ^3 ^-3 front_text.messages[1]
execute if data storage cyan {ans1:"4",ans2:"4",ans3:"4",ans4:"4"} run fill ^6 ^1 ^-16 ^-6 ^6 ^-4 air replace barrier
execute if data storage cyan {ans1:"4",ans2:"4",ans3:"4",ans4:"4"} run tellraw @p {translate:"text.cyan.y"}
execute unless data storage cyan {ans1:"4",ans2:"4",ans3:"4",ans4:"4"} run damage @p 10
execute unless data storage cyan {ans1:"4",ans2:"4",ans3:"4",ans4:"4"} run tellraw @p {translate:"text.cyan.n"}