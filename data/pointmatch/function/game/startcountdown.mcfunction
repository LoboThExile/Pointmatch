execute if score $total PM_Players matches ..1 as @a run tellraw @a [{text:"You cannot run this game with less than 2 players!",color:"red"}]
#execute if score $total PM_Players matches ..1 as @a run return fail
scoreboard players set #game PM_GAMESTARTCOUNTDOWN 500
execute as @a at @s run playsound block.bell.use

execute if score $total PM_Players matches 2.. run function pointmatch:game/gamestart