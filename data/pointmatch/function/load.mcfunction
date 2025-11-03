
# Remove teams and add them again to reset
tellraw @a "--- Resetting Teams ---"
tellraw @a "Deleting existing teams..."
team remove PM_Alpha
team remove PM_Bravo
# Add teams
tellraw @a "Adding teams..."
team add PM_Alpha {"text":"Alpha","color":"blue"}
team add PM_Bravo {"text":"Bravo","color":"red"}
tellraw @a "Teams have been reset."
tellraw @a "Resetting some scores..."
scoreboard objectives remove PM_welcome_clear 
scoreboard objectives add PM_welcome_clear dummy
scoreboard players set #PM_welcome PM_welcome_clear 0
tellraw @a "Scores have been reset."
tellraw @a "Adding some scores.."
scoreboard objectives add PM_Deaths deathCount
# Check if scoreboard "Points exists", if not create it
tellraw @a "Checking for existing 'Points' scoreboard..."
scoreboard objectives add PM_Points dummy {"text":"Points","color":"gold"}
tellraw @a "Running checks... Please wait..."
# Add time here to make sure minecraft loads everything
execute if score #PM_check PM_Points matches 1.. run schedule function pointmatch:points/foundoldpoints 2s
execute unless score #PM_check PM_Points matches 1.. run schedule function pointmatch:points/pointsnotfound 2s


