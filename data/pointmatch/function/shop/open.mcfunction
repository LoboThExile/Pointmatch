scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop
#say Opening Shop...
tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"-------------------------------",color:"gold"}
tellraw @s {"text":"Welcome to the shop. Buy anything you need.","color":"gold"}
tellraw @s {"text":"-------------------------------",color:"gold"}
tellraw @s ""
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 10"}}
tellraw @s ""
tellraw @s {"text":"[ WEAPONS ]",bold:true,click_event:{action:"run_command",command:"trigger PM_Shop set 200"},color:"yellow"}
tellraw @s {"text":"[ ARMOR ] (Unfinished)",bold:true,click_event:{action:"run_command",command:"trigger PM_Shop set 300"},color:"yellow"}
tellraw @s {"text":"[ MISC ] (Unfinished)",bold:true,click_event:{action:"run_command",command:"trigger PM_Shop set 400"},color:"yellow"}

