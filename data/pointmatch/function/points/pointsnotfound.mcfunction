tellraw @a "'Points' scoreboard not found. Creating new 'Points' scoreboard..."
scoreboard objectives add PM_Points dummy {"text":"Points","color":"gold"}
scoreboard players set #PM_check PM_Points 1
tellraw @a "'Points' scoreboard has been created. Proceeding..."