
scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# Check if player can afford (has at least 1 point)
execute unless score @s PM_Points matches 11.. run tellraw @s {"text":"Not enough points!", "color":"red"}
execute unless score @s PM_Points matches 11.. run execute as @s at @s run playsound minecraft:block.note_block.bass
execute unless score @s PM_Points matches 11.. run return fail

execute as @s at @s run playsound minecraft:block.note_block.bell

# If we reach here, they can afford
scoreboard players remove @s PM_Points 11
give @a trident[enchantments={loyalty:3},unbreakable={}]
tellraw @s {"text":"You have purchased a Trident with Loyality for 11 Points!", "color":"green"}

trigger PM_Shop set 100