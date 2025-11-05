scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
execute as @s at @s run playsound minecraft:block.note_block.bit
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s {"text":"Okay..? Uhmm...\nWhat a dangerous individual you are...","color":"gold"}
tellraw @s {"text":"+===============================+",color:"gold"}
tellraw @s ""
tellraw @s {"text":"[ Melee Weapons (Axe) ]", bold:true,color:"red"}
tellraw @s ""
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 200"}}
tellraw @s {"text":"- Golden Axe  (1 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 231"}}
tellraw @s {"text":"- Stone Axe   (2 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 232"}}
tellraw @s {"text":"- Iron Axe    (3 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 233"}}
tellraw @s {"text":"- Diamond Axe (4 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 234"}}
tellraw @s {text:"+===============================+",color:"gold",bold:true}
#tellraw @s [{"text":"[ AXE ]       ", bold:true,color:"red"},{text:"[>]",color:"green",click_event:{action:"run_command",command:"trigger PM_Shop set 230"}}]
tellraw @s [{text:"[<]",color:green,click_event:{action:"run_command",command:"trigger PM_Shop set 210"},bold:true},{"text":"       [ SWORD ]",color:red,bold:true}]