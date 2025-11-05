
scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# Check if player can afford (has at least 1 point)
execute unless score @s PM_Points matches 1.. run tellraw @s {"text":"Not enough points!", "color":"red"}
execute unless score @s PM_Points matches 1.. run execute as @s at @s run playsound minecraft:block.note_block.bass
execute unless score @s PM_Points matches 1.. run return fail


execute as @s at @s run playsound minecraft:block.note_block.bell
# If we reach here, they can afford
scoreboard players remove @s PM_Points 1
give @s minecraft:golden_axe
tellraw @s {"text":"You have purchased a Stone Axe for 1 Point!", "color":"green"}

trigger PM_Shop set 100