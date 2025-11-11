scoreboard players remove #game PM_GAMESTARTCOUNTDOWN 5
scoreboard players set #hundredths_base PM_TEMP 100

# Calculate seconds and hundredths
scoreboard players operation #seconds PM_TEMP = #game PM_GAMESTARTCOUNTDOWN
scoreboard players operation #hundredths PM_TEMP = #game PM_GAMESTARTCOUNTDOWN

scoreboard players operation #seconds PM_TEMP /= #hundredths_base PM_TEMP
scoreboard players operation #hundredths PM_TEMP %= #hundredths_base PM_TEMP

# ----- PLAY DING ON FULL SECOND ----- [FAILED...]
#execute unless score #seconds PM_TEMP = #seconds PM_LastSecond run playsound minecraft:block.note_block.pling master @a
#scoreboard players operation #seconds PM_LastSecond = #seconds PM_TEMP
# -------------------------------------

title @a actionbar [{"text":"Game starting in "}, \
{"score":{"name":"#seconds","objective":"PM_TEMP"},"color":"dark_purple"},{"text":"."},{"score":{"name":"#hundredths","objective":"PM_TEMP"},"color":"dark_purple"},{"text":" seconds...","color":"light_purple"}]

execute if score #game PM_GAMESTARTCOUNTDOWN matches 1.. run schedule function pointmatch:game/gamestart 0.025s
execute if score #game PM_GAMESTARTCOUNTDOWN matches 0 run function pointmatch:game/ingame
