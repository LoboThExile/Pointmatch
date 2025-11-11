tellraw @a [{text:"<"},{selector:"@s"},{text:"> I am entering the debugging menu..."}]
tellraw @s "\n\n\n\n\n\n\n"
tellraw @s [{text:'+===[ Debugging ]===+',color:"yellow",bold:true}]
tellraw @a [{text:"This should not be used in game!",color:"red"}]
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 10"}}
tellraw @s [{"text":"[ Grant 50 Points ]","color":"yellow","bold":true,"hover_event":{"action":"show_text","value":{"text":"Click to grant yourself 50 points!","color":"gold"}},"click_event":{"action":"run_command","command":"scoreboard players add @s PM_Points 50"},font:uniform}]
tellraw @s [{text:"[ Reload ]",hover_event:{action:"show_text",value:"This will run load.mcfunction. Use with caution."},color:yellow,font:"minecraft:uniform",click_event:{action:"run_command",command:"function pointmatch:load"}}]
tellraw @s [{text:"[ Full Reload Everything ] (Use with caution)",hover_event:{action:"show_text",value:"This will reload EVERYTHING!!!. Use with caution."},color:red,font:"minecraft:uniform",click_event:{action:"run_command",command:reload},bold:true}]
tellraw @s [{text:"[ Enable verbose logs ](Unused)", strikethrough:true ,hover_event:{action:"show_text",value:"This will enable more verbose logs"},click_event:{action:"run_command",command:"say hi"}}]
