title @a subtitle {"text":"ALPHA IS VICTORIOUS!","color":"green"}
title @a title "" 
tellraw @a {"text":"=======[Point Match]========","color":"gold"}
tellraw @a {"text":"Alpha has won this match.","color":"yellow"}
tellraw @a {"text":"Scores:","color":"gold"}
tellraw @a [{"text":"Alpha: ","color":"blue"},{"score":{"name":"#Alpha","objective":"PM_Wins"},"color":"gold"},{"text":" Wins"},{"text":",","color":"dark_green"},{"text":"Bravo: ","color":"red"},{"score":{"name":"#Bravo","objective":"PM_Wins"},"color":"gold"},{"text":" Wins!"}]

scoreboard players set @a PM_Wins 0