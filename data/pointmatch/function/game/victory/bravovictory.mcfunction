title @a subtitle {"text":"BRAVO IS VICTORIOUS!","color":"green"}
title @a title "" 
tellraw @a {"text":"=======[Point Match]========","color":"gold"}
tellraw @a {"text":"Bravo has won this match.","color":"yellow"}
tellraw @a {"text":"Scores:","color":"gold"}
tellraw @a [{"text":"Alpha: ","color":"red"},{"score":{"name":"#Alpha","objective":"PM_Wins"},"color":"gold"},{"text":" Wins"},{"text":",","color":"dark_green"},{"text":"Bravo: ","color":"blue"},{"score":{"name":"#Bravo","objective":"PM_Wins"},"color":"gold"},{"text":" Wins!"}]

scoreboard players set @a PM_Wins 0