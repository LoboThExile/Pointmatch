scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
execute as @s run playsound minecraft:block.note_block.bell
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s {"text":"I have nothing to say except that this is in development...","color":"gold"}
tellraw @s {"text":"+===============================+",color:"gold"}

tellraw @s ""
tellraw @s {"text":"[ ARMOR ]", bold:true,color:"red"}
tellraw @s ""
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 100"}}
tellraw @s {"text":"- ARMOR1", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 310"}}
tellraw @s {"text":"- ARMOR2", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 320"}}
tellraw @s {"text":"- ARMOR3", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 330"}}


