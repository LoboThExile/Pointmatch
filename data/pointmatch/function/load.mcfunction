

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

schedule clear pointmatch:game/gamestart

execute as @a at @s run stopsound @a * pointmatch:pointmatch.weather.weathergirl
execute as @a at @s run stopsound @a * pointmatch:pointmatch.shop.music
execute as @a at @s run stopsound @a * pointmatch:pointmatch.shop.music.hipshop
execute as @a at @s run stopsound @a * pointmatch:pointmatch.shop.music.untitledtaggame
execute as @a at @s run stopsound @a * pointmatch:pointmatch.fight.music.red_folly
execute as @a at @s run stopsound @a * pointmatch:pointmatch.fight.music.decisive_battle

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
scoreboard objectives remove PM_GAMESTARTCOUNTDOWN
scoreboard objectives remove PM_TEMP
scoreboard objectives remove PM_Players
scoreboard objectives remove PM_RandomMusic
scoreboard objectives remove PM_isDead
scoreboard objectives remove PM_PickTeam
scoreboard objectives remove PM_AlphaIsTaken
scoreboard objectives remove PM_BravoIsTaken
scoreboard objectives remove PM_LastSecond
scoreboard objectives remove PM_GameRound
scoreboard objectives remove PM_Game3rdRound
scoreboard objectives remove PM_CreditsPage
scoreboard objectives remove PM_leave_game
# scoreboard objectives remove PM_Bravo_Wins
scoreboard objectives remove PM_Wins

scoreboard objectives add PM_Wins dummy "Wins"
# scoreboard objectives add PM_Bravo_Wins dummy "Bravo Wns"
scoreboard objectives add PM_leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add PM_Game3rdRound dummy
scoreboard objectives add PM_GameRound dummy
scoreboard objectives add PM_LastSecond dummy
scoreboard objectives add PM_AlphaIsTaken dummy
scoreboard objectives add PM_BravoIsTaken dummy
scoreboard objectives add PM_isDead dummy
scoreboard objectives add PM_RandomMusic dummy
scoreboard objectives add PM_Players dummy
scoreboard objectives add PM_TEMP dummy
scoreboard objectives add PM_GAMESTARTCOUNTDOWN dummy
scoreboard objectives add PM_Ingame dummy
scoreboard objectives add PM_MUTE dummy
scoreboard objectives add PM_ShopIndicator dummy "Currently In Shop"
scoreboard objectives add PM_welcome_clear dummy
scoreboard players set #PM_welcome PM_welcome_clear 0
tellraw @a [{"text":" Scores have been reset.","color":"green"}]

tellraw @a [{"text":" Adding more scoreboards...","color":"aqua"}]
scoreboard objectives add PM_Deaths deathCount
scoreboard objectives add PM_Shop trigger
scoreboard objectives add PM_PickTeam trigger
scoreboard objectives add PM_CreditsPage trigger
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

# -----------------------------
# Count players
# -----------------------------

# Reset and set player count
scoreboard players set $total PM_Players 0
execute as @a run scoreboard players add $total PM_Players 1

# Set boolean: 1 if >1 players, 0 otherwise
scoreboard players set $multi PM_Players 0
execute if score $total PM_Players matches 2.. run scoreboard players set $multi PM_Players 1

tellraw @a "Made with ❤ by LoboThExile" 