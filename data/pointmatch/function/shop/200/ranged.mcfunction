scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"-------------------------------",color:"gold"}
tellraw @s {"text":"Headshot 223...","color":"gold"}
tellraw @s {"text":"-------------------------------",color:"gold"}
tellraw @s ""
tellraw @s {"text":"[ Ranged Weapons ]", bold:true,color:"red"}
tellraw @s ""
tellraw @s {"text":"[ Go Back ] ", color:"green", click_event:{action:"run_command", command:"trigger PM_Shop set 200"}}
#tellraw @s "IN DEVELOPMENT"
tellraw @s {"text":"- Bow And Arrows(x16)            (8 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 251"}}
tellraw @s {"text":"- Crossbow And Arrows(x32)          (9 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 252"}}
tellraw @s {"text":"- Trident                         (10 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 254"}}
#tellraw @s {"text":"- Trident w/ Loyalty                 (11 Points)", color:"yellow", click_event:{action:"run_command", command:"trigger PM_Shop set 255"}}
