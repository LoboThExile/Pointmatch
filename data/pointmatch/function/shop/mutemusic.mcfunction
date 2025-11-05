#
# Does not work. Please do not use this function.
#


scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

#Flipflop
execute if score @s PM_MUTE matches 0 run scoreboard players set @s PM_MUTE 1
execute if score @s PM_MUTE matches 1.. run scoreboard players set @s PM_MUTE 0

execute as @s at @s unless score @s PM_MUTE matches 1.. run tellraw @s {text:"Shop music muted"}
execute as @s at @s unless score @s PM_MUTE matches 1.. run stopsound @s * pointmatch:pointmatch.shop.music
# No need for playing the music since we got the function already.
execute as @s at @s unless score @s PM_MUTE matches ..0 run tellraw @s {text:"Shop music unmuted"}

function pointmatch:shop/playshopmusic
#scoreboard players set @s PM_MUTE 1