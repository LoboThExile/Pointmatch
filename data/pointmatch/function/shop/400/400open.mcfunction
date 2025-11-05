scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop
execute as @s at @s run playsound minecraft:block.note_block.bit
tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s {"text":"How.. Curious...","color":"gold"}
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s ""
tellraw @s {"text":"[ MISC ]", bold:true,color:"red"}
tellraw @s "INDEV"
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 100"}}
tellraw @s {"text":"- Cobblestone", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 401"}}
tellraw @s {"text":"- Cobwebs", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 402"}}
tellraw @s {"text":"- Stone Pickaxe", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 403"}}
