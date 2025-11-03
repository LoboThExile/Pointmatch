
scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# Check if player can afford (has at least 1 point)
execute unless score @s PM_Points matches 9.. run tellraw @s {"text":"Not enough points!", "color":"red"}
execute unless score @s PM_Points matches 9.. run return fail

# If we reach here, they can afford
scoreboard players remove @s PM_Points 9
give @s minecraft:crossbow
give @s minecraft:arrow 32
tellraw @s {"text":"You have purchased a Crossbow and Arrows(x32) for 9 Points!", "color":"green"}

trigger PM_Shop set 100