scoreboard players set @s PM_Deaths 0
title @a subtitle [{text:"Team Alpha lost...",bold:true,color:red}]
title @a title ""

scoreboard players add #Bravo PM_Wins 1

execute if score #game PM_GameRound matches 3 run function pointmatch:game/3rdroundgame
execute if score #game PM_GameRound matches 3 run return 0

scoreboard players add @a[team=PM_Alpha] PM_Points 7
scoreboard players add @a[team=!PM_Alpha] PM_Points 3

function pointmatch:game/exitgame

# No need for death sound as we have that in tick.
#execute as @s at @s run playsound pointmatch:pointmatch.death.determination ui @a ~ ~ ~