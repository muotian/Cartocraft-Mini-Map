import pyperclip

start_x = -2.5
step = 0.25

cmds = []
curr_x = start_x

while curr_x <= -1.75 + 0.001:

    curr_z = 1.44 * curr_x / 2.5
    cmds.append(f"particle dust{{color:[0.710,0.941,1.000],scale:0.5}} ^{curr_x:.2f} ^ ^{curr_z:.2f} 0 0 0 1000000 1 force")
    cmds.append(f"particle dust{{color:[0.710,0.941,1.000],scale:0.5}} ^{-curr_x:.2f} ^ ^{curr_z:.2f} 0 0 0 1000000 1 force")
    
    curr_x += step

pyperclip.copy("\n".join(cmds))