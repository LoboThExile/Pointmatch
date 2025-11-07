execute if score #game PM_Ingame matches 1.. as @s run trigger PM_Shop set 10
execute if score #game PM_Ingame matches 1.. as @s run title @s actionbar [{text:"I can't open the shop right now...",color:yellow}]
execute if score #game PM_Ingame matches 1.. as @s run tellraw @a [{text:"<"},{selector:"@s"},{text:"> I can't open the shop right now..."}]
execute if score #game PM_Ingame matches 1.. as @s run return fail

execute as @s store result score @s PM_RandomMusic run random value 1..3
execute as @s if score @s PM_RandomMusic matches 1 at @s as @s run playsound pointmatch:pointmatch.shop.music ui @s
execute as @s if score @s PM_RandomMusic matches 2 at @s as @s run playsound pointmatch:pointmatch.shop.music.hipshop ui @s
execute as @s if score @s PM_RandomMusic matches 3 at @s as @s run playsound pointmatch:pointmatch.shop.music.untitledtaggame ui @s

trigger PM_Shop set 100