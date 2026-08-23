advancement revoke @s only icer:kill_pyro

scoreboard players add count icer.pyrowind_fragment 1
playsound entity.experience_orb.pickup ambient @a ~ ~ ~
tellraw @a {"translate":"icer.pick_fragment","color":"green","bold":true}
kill @e[tag=icer.pyrosword]