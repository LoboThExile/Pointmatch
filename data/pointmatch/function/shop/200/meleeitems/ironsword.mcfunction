
scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# Check if player can afford (has at least 1 point)
execute unless score @s PM_Points matches 3.. run tellraw @s {"text":"Not enough points!", "color":"red"}
execute unless score @s PM_Points matches 3.. run return fail

# If we reach here, they can afford
scoreboard players remove @s PM_Points 3
give @s minecraft:iron_sword
tellraw @s {"text":"You have purchased a Iron Sword for 3 Points!", "color":"green"}
trigger PM_Shop set 100