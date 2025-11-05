scoreboard players remove #game PM_GAMESTARTCOUNTDOWN 5
scoreboard players set #hundredths_base PM_TEMP 100
scoreboard players operation #seconds PM_TEMP = #game PM_GAMESTARTCOUNTDOWN
scoreboard players operation #hundredths PM_TEMP = #game PM_GAMESTARTCOUNTDOWN
scoreboard players operation #seconds PM_TEMP /= #hundredths_base PM_TEMP
scoreboard players operation #hundredths PM_TEMP %= #hundredths_base PM_TEMP


#title @a subtitle {"text":"Game Starting...","color":"gold"}
title @a actionbar [{"text":"Game starting in "},{"score":{"name":"#seconds","objective":"PM_TEMP"},"color":"dark_purple"},{"text":"."},{"score":{"name":"#hundredths","objective":"PM_TEMP"},"color":"dark_purple"},{"text":" seconds...","color":"light_purple"}]

execute if score #game PM_GAMESTARTCOUNTDOWN matches 1.. run schedule function pointmatch:game/gamestart 0.025s
execute if score #game PM_GAMESTARTCOUNTDOWN matches 0 run function pointmatch:game/ingame
