scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
execute as @s at @s run playsound minecraft:block.note_block.bit
tellraw @s {"text":"-------------------------------",color:"gold"}
tellraw @s {"text":"Alright.. Melee it is..","color":"gold"}
tellraw @s {"text":"-------------------------------",color:"gold"}
tellraw @s ""
tellraw @s {"text":"[ Melee Weapons ]", bold:true,color:"red"}
tellraw @s ""
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 200"}}
tellraw @s {"text":"- Golden Sword  (1 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 211"}}
tellraw @s {"text":"- Stone Sword   (2 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 212"}}
tellraw @s {"text":"- Iron Sword    (3 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 213"}}
tellraw @s {"text":"- Diamond Sword (4 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 214"}}
tellraw @a {text:"+===============================+",color:"gold",bold:true}
tellraw @s [{"text":"[ AXE ]       ", bold:true,color:"red"},{text:"[>]",color:"green",click_event:{action:"run_command",command:"trigger PM_Shop set 230"}}]