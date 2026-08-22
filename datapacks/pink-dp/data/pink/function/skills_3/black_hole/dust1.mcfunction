#
execute store result storage pink:bh x float 0.1 run random value 50..100
execute store result storage pink:bh y float 0.1 run random value 50..100
execute store result storage pink:bh z float 0.1 run random value 75..125
execute if predicate pink:probability/50 store result storage pink:bh x float -0.1 run random value 75..125
execute if predicate pink:probability/50 store result storage pink:bh y float -0.1 run random value 50..100
execute if predicate pink:probability/50 store result storage pink:bh z float -0.1 run random value 50..100

function pink:skills_3/black_hole/dust_pos with storage pink:bh {}



