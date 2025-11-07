scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

execute as @s run playsound minecraft:block.note_block.bell

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s {"text":"Oh.. Weapons..","color":"gold"}
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s ""
tellraw @s {"text":"[ WEAPONS ]", bold:true,color:"red"}
tellraw @s ""
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 100"}}
tellraw @s {"text":"- Melee Weapons", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 210"}}
tellraw @s {"text":"- Ranged Weapons", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 250"}}
