scoreboard players set #game PM_Ingame 0

scoreboard players set #game PM_AlphaIsTaken 0
scoreboard players set #game PM_BravoIsTaken 0

# Force leave
execute as @a run team leave @a

## Error capturing
# execute if score #game PM_Game3rdRound matches 0 run tellraw @a [{text:"WARNING: Score 'PM_Game3rdRound' for '#game' got was 0. Did you skip a step? Attempting to fix..."}]
# execute if score #game PM_Game3rdRound matches 0 run scoreboard players set #game PM_Game3rdRound 1

# execute if score #game PM_GameRound matches 0 run tellraw @a [{text:"WARNING: Score 'PM_GameRound' for '#game' got was 0. Did you skip a step? Attempting to fix..."}]
# execute if score #game PM_GameRound matches 0 run scoreboard players set #game PM_GameRound 1

# execute if score #game PM_Game3rdRound matches ..-1 run tellraw @a [{text:"ERROR: Score 'PM_Game3rdRound' for '#game' is out of range. Expected 1-4 and got ", color:red},{score:{name:"#game",objective:PM_Game3rdRound}},{text:"!"}]
# execute if score #game PM_Game3rdRound matches ..-1 run tellraw @a {text:"Bailing out, you are on your own now. Good luck.\n", color:red} 
# execute if score #game PM_Game3rdRound matches ..-1 run return 0
# execute if score #game PM_Game3rdRound matches 5.. run tellraw @a [{text:"ERROR: Score 'PM_Game3rdRound' for '#game' is out of range. Expected 1-4 and got ", color:red},{score:{name:"#game",objective:PM_Game3rdRound}},{text:"!"}]
# execute if score #game PM_Game3rdRound matches 5.. run tellraw @a {text:"Bailing out, you are on your own now. Good luck.\n", color:red} 
# execute if score #game PM_Game3rdRound matches 5.. run return 0

execute if score #game PM_GameRound matches 3 run say Gamer

execute if score #game PM_GameRound matches 2 run title @a actionbar {"text":"Giver Round!","color":"gold"}

execute if score #game PM_GameRound matches 2 run tellraw @a {"text":"+=======[","color":"dark_gray","extra":[{"text":"Giver Rounds!","color":"aqua"},{"text":"]=======+","color":"dark_gray"}]}

execute if score #game PM_GameRound matches 2 run tellraw @a [{"text":"Every three rounds, a ","color":"yellow"},{"text":"Giver Round","color":"gold"},{"text":" starts. Instead of buying items for yourself, you spend points to give items to your enemies.","color":"white"}]

execute if score #game PM_GameRound matches 2 run tellraw @a [{"text":"The twist: ","color":"yellow"},{"text":"every point you spend on an opponent is multiplied by the Giver Rate","color":"light_purple"},{"text":" and added back to your own points. This lets you help yourself by ","color":"white"},{"text":"“helping”","color":"gray"},{"text":" your enemy.","color":"white"}]

execute if score #game PM_GameRound matches 2 run tellraw @a {"text":"+=======[","color":"dark_gray","extra":[{"text":"Giver Rounds!","color":"aqua"},{"text":"]=======+","color":"dark_gray"}]}


execute as @a at @s run stopsound @a * pointmatch:pointmatch.fight.music.red_folly
execute as @a at @s run stopsound @a * pointmatch:pointmatch.fight.music.decisive_battle