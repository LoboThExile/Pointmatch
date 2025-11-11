scoreboard players set @s PM_Deaths 0
title @a subtitle [{text:"Team Alpha lost...",bold:true,color:red}]
title @a title ""

execute if score #game PM_GameRound matches 3 run function pointmatch:game/3rdroundgame {"bravo":true}
execute if score #game PM_GameRound matches 3 run return 0

# No need for death sound as we have that in tick.
#execute as @s at @s run playsound pointmatch:pointmatch.death.determination ui @a ~ ~ ~