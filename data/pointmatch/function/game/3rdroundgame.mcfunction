scoreboard players set #game PM_Game3rdRound 1
tellraw @a {text:"ERROR: Giver rounds are yet not implemented yet!",color:red}
tellraw @a {text:"Resetting score 'PM_Game3rdRound' to 1..",color:red}
execute as @a run trigger PM_Shop set 1
return 0

## Main script
