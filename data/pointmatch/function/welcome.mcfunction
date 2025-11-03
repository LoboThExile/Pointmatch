scoreboard players add #PM_welcome PM_welcome_clear 1
tellraw @a ""
execute unless score #PM_welcome PM_welcome_clear matches 6.. run tellraw @a ""
execute unless score #PM_welcome PM_welcome_clear matches 6.. run schedule function pointmatch:welcome 10t

execute if score #PM_welcome PM_welcome_clear matches 6.. run function pointmatch:welcome_screen

scoreboard objectives setdisplay sidebar PM_Points