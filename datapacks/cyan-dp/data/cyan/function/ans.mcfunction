data modify storage cyan ans set from block ^ ^1 ^-1 front_text.messages[1]
execute if data storage cyan {ans:"1"} run data modify block ^ ^1 ^-1 front_text.messages[1] set value "2"
execute if data storage cyan {ans:"2"} run data modify block ^ ^1 ^-1 front_text.messages[1] set value "3"
execute if data storage cyan {ans:"3"} run data modify block ^ ^1 ^-1 front_text.messages[1] set value "4"
execute if data storage cyan {ans:"4"} run data modify block ^ ^1 ^-1 front_text.messages[1] set value "1"