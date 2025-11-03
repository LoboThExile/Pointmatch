scoreboard objectives remove PM_Points
scoreboard objectives add PM_Points dummy {"text":"Points","color":"gold"}
scoreboard players set #PM_check PM_Points 1
tellraw @a "Old 'Points' scoreboard data has been replaced with a new scoreboard. Continuing..."
schedule function pointmatch:welcome 1s