# execute if score $total PM_Players matches ..1 as @a run tellraw @a [{text:"You cannot run this game with less than 2 players!",color:"red"}]
# #execute if score $total PM_Players matches ..1 as @a run return fail
# scoreboard players set #game PM_GAMESTARTCOUNTDOWN 500
# execute as @a at @s run playsound block.bell.use

# execute if score $total PM_Players matches 2.. run function pointmatch:game/gamestart
# execute if score $total PM_Players matches 2.. as @a run trigger PM_Shop set 10

execute if score #game PM_Ingame matches 1.. run tellraw @a {text:"ERROR: startcountdown.mcfunction was called while game has already begun.",color:red}
execute if score #game PM_Ingame matches 1.. run tellraw @a {text:"Bailing out, you are on your own now. Good luck.\n", color:red}
execute if score #game PM_Ingame matches 1.. run return fail

execute if score #game PM_GameRound matches 0 run scoreboard players set #game PM_GameRound 1

execute unless score #game PM_Game3rdRound matches 3.. run scoreboard players add #game PM_Game3rdRound 1
execute if score #game PM_Game3rdRound matches 4.. run scoreboard players set #game PM_Game3rdRound 1


#execute as @a at @s run playsound pointmatch:pointmatch.fight.music.red_folly voice @s
execute as @a at @s run playsound pointmatch:pointmatch.fight.music.decisive_battle voice @s

scoreboard players set #game PM_Ingame 1

#---------------------------------
# BYPASS BELOW
#---------------------------------

execute if score $total PM_Players matches ..1 as @a run tellraw @a "Warning: Player count is below 2. Continuing anyway..."

scoreboard players set #game PM_GAMESTARTCOUNTDOWN 500
execute as @a at @s run playsound block.bell.use
function pointmatch:game/gamestart

