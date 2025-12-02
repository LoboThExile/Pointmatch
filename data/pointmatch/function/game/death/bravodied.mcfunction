scoreboard players set @s PM_Deaths 0
title @a subtitle [{text:"Team Bravo lost...",bold:true,color:red}]
title @a title ""

scoreboard players add #Alpha PM_Wins 1

execute if score #game PM_GameRound matches 3 run function pointmatch:game/3rdroundgame
execute if score #game PM_GameRound matches 3 run return 0

scoreboard players add @a[team=PM_Bravo] PM_Points 7
scoreboard players add @a[team=!PM_Bravo] PM_Points 3

function pointmatch:game/exitgame


#execute as @s at @s run playsound pointmatch:pointmatch.death.determination ui @a ~ ~ ~