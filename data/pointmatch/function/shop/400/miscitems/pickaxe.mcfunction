
scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# Check if player can afford (has at least 1 point)
execute unless score @s PM_Points matches 2.. run tellraw @s {"text":"Not enough points!", "color":"red"}
execute unless score @s PM_Points matches 2.. run execute as @s at @s run playsound minecraft:block.note_block.bass
execute unless score @s PM_Points matches 2.. run return fail

execute as @s at @s run playsound minecraft:block.note_block.bell

# If we reach here, they can afford
scoreboard players remove @s PM_Points 2
give @s minecraft:stone_pickaxe
tellraw @s {"text":"You have purchased a Stone Pickaxe for 2 Points!", "color":"green"}

trigger PM_Shop set 100