tellraw @a [{"text":" ",color:green},{"selector":"@s",color:light_purple},{"text":" just joined!","color":"green"}]
playsound entity.player.levelup master @s

execute as @s run trigger PM_Shop set 1

# Reset their stat so we can detect the next time they leave and come back
scoreboard players reset @s PM_leave_game
