

# scoreboard players set @a PM_Shop 0
# scoreboard players enable @a PM_Shop

# # Remove teams and add them again to reset

# tellraw @a "--- Resetting Teams ---"
# tellraw @a "Deleting existing teams..."
# team remove PM_Alpha
# team remove PM_Bravo

# # Add teams
# tellraw @a "Adding teams..."
# team add PM_Alpha {"text":"Alpha","color":"blue"}
# team add PM_Bravo {"text":"Bravo","color":"red"}
# tellraw @a "Teams have been reset."

# tellraw @a "Resetting some scores..."
# scoreboard objectives remove PM_welcome_clear 
# scoreboard objectives remove PM_ShopIndicator
# scoreboard objectives add PM_ShopIndicator dummy "Currently In Shop"
# scoreboard objectives add PM_welcome_clear dummy
# scoreboard players set #PM_welcome PM_welcome_clear 0
# tellraw @a "Scores have been reset."

# tellraw @a "Adding some scores.."
# scoreboard objectives add PM_Deaths deathCount
# scoreboard objectives add PM_Shop trigger

# scoreboard players enable @a PM_Shop
# tellraw @a "Scores have been added."

# scoreboard objectives setdisplay sidebar PM_Points

# # Check if scoreboard "Points exists", if not create it
# tellraw @a "Checking for existing 'Points' scoreboard..."
# scoreboard objectives add PM_Points dummy {"text":"Points","color":"gold"}
# tellraw @a "Running checks... Please wait..."

# # Add time here to make sure minecraft loads everything
# execute if score #PM_check PM_Points matches 1.. run schedule function pointmatch:points/foundoldpoints 2s
# execute unless score #PM_check PM_Points matches 1.. run schedule function pointmatch:points/pointsnotfound 2s


# ===============================================================
#                   POINTMATCH LOAD FUNCTION
# ===============================================================

execute as @a at @s run stopsound @a * pointmatch:pointmatch.shop.music

# -----------------------------
# Reset Shop Scores
# -----------------------------
scoreboard players set @a PM_Shop 0
scoreboard players enable @a PM_Shop
tellraw @a [{"text":" Resetting Shop Scores...","color":"gold"}]

# -----------------------------
# Reset Teams
# -----------------------------
tellraw @a [{"text":" Resetting Teams...","color":"blue"}]
tellraw @a [{"text":"Deleting existing teams...","color":"red"}]
team remove PM_Alpha
team remove PM_Bravo

tellraw @a [{"text":"Adding teams...","color":"green"}]
team add PM_Alpha {"text":"Alpha","color":"blue"}
team add PM_Bravo {"text":"Bravo","color":"red"}
tellraw @a [{"text":" Teams have been reset.","color":"green"}]

# -----------------------------
# Reset and Add Scoreboards
# -----------------------------
tellraw @a [{"text":" Resetting some scores...","color":"yellow"}]
scoreboard objectives remove PM_welcome_clear
scoreboard objectives remove PM_ShopIndicator
scoreboard objectives remove PM_MUTE
scoreboard objectives remove PM_Ingame

scoreboard objectives add PM_Ingame dummy
scoreboard objectives add PM_MUTE dummy
scoreboard objectives add PM_ShopIndicator dummy "Currently In Shop"
scoreboard objectives add PM_welcome_clear dummy
scoreboard players set #PM_welcome PM_welcome_clear 0
tellraw @a [{"text":" Scores have been reset.","color":"green"}]

tellraw @a [{"text":" Adding more scoreboards...","color":"aqua"}]
scoreboard objectives add PM_Deaths deathCount
scoreboard objectives add PM_Shop trigger
scoreboard players enable @a PM_Shop
tellraw @a [{"text":" Scoreboards have been added.","color":"green"}]

# -----------------------------
# Set Display Sidebar
# -----------------------------
scoreboard objectives setdisplay sidebar PM_Points
tellraw @a [{"text":" Sidebar set to Points.","color":"gold"}]

# -----------------------------
# Check / Create Points Scoreboard
# -----------------------------
tellraw @a [{"text":" Checking for existing 'Points' scoreboard...","color":"yellow"}]
scoreboard objectives add PM_Points dummy {"text":"Points","color":"gold"}
tellraw @a [{"text":" Running checks... Please wait...","color":"aqua"}]

# -----------------------------
# Schedule Functions Based on Points Check
# -----------------------------
execute if score #PM_check PM_Points matches 1.. run schedule function pointmatch:points/foundoldpoints 2s
execute unless score #PM_check PM_Points matches 1.. run schedule function pointmatch:points/pointsnotfound 2s

scoreboard objectives add PM_Weather dummy
scoreboard players set #PrevWeather PM_Weather 0
scoreboard players set #CurrWeather PM_Weather 0

