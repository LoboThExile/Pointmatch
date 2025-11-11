tellraw @a "BEGIN!! (game not implemented. Will end game in 5 seconds..."
scoreboard players add #game PM_GameRound 1
say pointmatch:game/ingame.mcfunction ran!
schedule function pointmatch:game/exitgame 5s

## Error capturing
execute if score #game PM_Game3rdRound matches 0 run tellraw @a [{text:"WARNING: Score 'PM_Game3rdRound' for '#game' got was 0. Did you skip a step? Attempting to fix..."}]
execute if score #game PM_Game3rdRound matches 0 run scoreboard players set #game PM_Game3rdRound 1

execute if score #game PM_GameRound matches 0 run tellraw @a [{text:"WARNING: Score 'PM_GameRound' for '#game' got was 0. Did you skip a step? Attempting to fix..."}]
execute if score #game PM_GameRound matches 0 run scoreboard players set #game PM_GameRound 1

execute if score #game PM_Game3rdRound matches ..-1 run tellraw @a [{text:"ERROR: Score 'PM_Game3rdRound' for '#game' is out of range. Expected 1-4 and got ", color:red},{score:{name:"#game",objective:PM_Game3rdRound}},{text:"!"}]
execute if score #game PM_Game3rdRound matches ..-1 run tellraw @a {text:"Bailing out, you are on your own now. Good luck.\nError occured in pointmatch:game/ingame.\n", color:red} 
execute if score #game PM_Game3rdRound matches ..-1 run return 0
execute if score #game PM_Game3rdRound matches 5.. run tellraw @a [{text:"ERROR: Score 'PM_Game3rdRound' for '#game' is out of range. Expected 1-4 and got ", color:red},{score:{name:"#game",objective:PM_Game3rdRound}},{text:"!"}]
execute if score #game PM_Game3rdRound matches 5.. run tellraw @a {text:"Bailing out, you are on your own now. Good luck.\nError occured in pointmatch:game/ingame.\n", color:red} 
execute if score #game PM_Game3rdRound matches 5.. run return 0