execute if score #game PM_Ingame matches 1.. as @s run tellraw @a [{text:"<"},{selector:"@s"},{text:"> I can't open the shop right now..."}]
execute if score #game PM_Ingame matches 1.. as @s run trigger PM_Shop set 10
execute if score #game PM_Ingame matches 1.. as @s run return fail
execute as @s at @s run playsound pointmatch:pointmatch.shop.music ui @s
trigger PM_Shop set 100