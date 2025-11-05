scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# ───────────────────────────────
#  Welcome Screen
# ───────────────────────────────
stopsound @s * pointmatch:pointmatch.shop.music
execute as @s at @s run playsound minecraft:block.note_block.bit
tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n"}]
tellraw @a [{"text":"=================================","color":"gold"}]
tellraw @a [{"text":"     ✦ Welcome to PointMatch ✦","color":"yellow","bold":true}]
tellraw @a [{"text":"=================================","color":"gold"}]
tellraw @a [{"text":"Created by ","color":"gray"},{"text":"LoboThExile","color":"aqua"},{"text":" | Idea by ","color":"gray"},{"text":"Kirby","color":"light_purple"}]
tellraw @a ""
tellraw @a [{"text":"This datapack creates a ","color":"white"},{"text":"1v1 gamemode","color":"gold","bold":true},{"text":",\nwhere players earn points by defeating each other!","color":"white"}]
tellraw @a ""
tellraw @a [{"text":"[ Open Shop ]","color":"green","bold":true,"hover_event":{"action":"show_text","value":{"text":"Click to open the shop!","color":"yellow"}},"click_event":{"action":"run_command","command":"trigger PM_Shop set -100"}}]
tellraw @a [{text:"[ Debug Menu (Admin Only) ]", bold:true, color:"red",hover_event:{action:"show_text",value:"Opens the debugging menu."}, font:"default",underlined:true,click_event:{action:"suggest_command",command:"/function pointmatch:debug/debugmenu"}}]
#tellraw @a [{"text":"[ Grant 50 Points ]","color":"yellow","bold":true,"hover_event":{"action":"show_text","value":{"text":"Click to grant yourself 50 points!","color":"gold"}},"click_event":{"action":"run_command","command":"scoreboard players add @s PM_Points 50"}}]
#tellraw @a [{"text":"===============================","color":"gold"}]
