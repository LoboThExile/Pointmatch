scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

tellraw @a [{"text":"-------------------------------",color:"gold"}]
tellraw @a {"text":"          Welcome to PointMatch       ","color":"gold"}
tellraw @a [{"text":"-------------------------------","color":"gold"}]
tellraw @a "This datapack was made by LoboThExile, Idea by Kirby"
tellraw @a "This datapack creates a 1v1 game mode,\nWhere players can earn points by defeating each other."
tellraw @a {text:"[Open Shop]",color:"green",bold:true,hover_event:{action:"show_text",value:"Click to open the shop!"},click_event:{action:"run_command",command:"trigger PM_Shop set 100"}}
tellraw @a {text:"[Grant 50 Points]",color:"yellow",bold:true,hover_event:{action:"show_text",value:"Click to grant yourself 50 points!"},click_event:{action:"run_command",command:"scoreboard players add @s PM_Points 50"}}