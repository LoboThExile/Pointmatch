tellraw @a "Keeping old 'Points' scoreboard data."
scoreboard players set #PM_check PM_Points 1
tellraw @a "Proceeding..."
schedule clear pointmatch:points/keepoldpoints
schedule function pointmatch:welcome 1s
